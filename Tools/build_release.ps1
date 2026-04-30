# ==============================================================================
# build_release.ps1 — Pokemon Shattered Crowns Release Builder
#
# Creates a distributable game package with encrypted RGSSAD archive.
#
# Usage:
#   .\Tools\build_release.ps1                    # Default: .\Release
#   .\Tools\build_release.ps1 -OutputDir "Build"
#   .\Tools\build_release.ps1 -SkipArchive        # Copy only, no encryption
#   .\Tools\build_release.ps1 -Protected           # Anti-decrypter build
#   .\Tools\build_release.ps1 -Verbose             # Show every archived file
#
# -Protected mode:
#   Patches Game.exe encryption key (0xDEADCAFE → custom) and builds the
#   archive with the matching custom key. Standard RPG Maker Decrypter tools
#   cannot read the result. Audio/ and Data/ stay as loose folders (required
#   by mkxp-z audio subsystem and script runtime respectively).
# ==============================================================================
param(
    [string]$OutputDir = "Release",
    [switch]$SkipArchive,
    [switch]$Protected,
    [switch]$Verbose
)

$ErrorActionPreference = "Stop"
$GameDir   = Split-Path $PSScriptRoot -Parent
$ToolsDir  = $PSScriptRoot
$Archiver  = Join-Path $ToolsDir "RGSSArchiver\bin\Release\net10.0-windows\win-x64\publish\RGSSArchiver.exe"
$OutputDir = Join-Path $GameDir $OutputDir

Write-Host ""
Write-Host "  ╔══════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "  ║   Pokemon Shattered Crowns — Release Builder     ║" -ForegroundColor Cyan
Write-Host "  ╚══════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""
Write-Host "  Game dir : $GameDir"
Write-Host "  Output   : $OutputDir"
if ($Protected) {
    Write-Host "  Mode     : PROTECTED (custom encryption key)" -ForegroundColor Magenta
}
Write-Host ""

$totalSteps = if ($Protected) { 5 } else { 4 }

# ==============================================================================
# Step 1: Build the archiver tool
# ==============================================================================
if (!$SkipArchive) {
    Write-Host "  [1/$totalSteps] Building RGSSArchiver..." -ForegroundColor Yellow
    $csproj = Join-Path $ToolsDir "RGSSArchiver\RGSSArchiver.csproj"
    dotnet publish $csproj -c Release -r win-x64 --self-contained -p:PublishSingleFile=true -verbosity:quiet
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Failed to build RGSSArchiver. Is .NET SDK installed?"
        exit 1
    }
    Write-Host "  [1/$totalSteps] RGSSArchiver built successfully." -ForegroundColor Green
} else {
    Write-Host "  [1/$totalSteps] Skipping archiver (--SkipArchive)." -ForegroundColor DarkGray
}

# ==============================================================================
# Step 2: Prepare output directory
# ==============================================================================
Write-Host "  [2/$totalSteps] Preparing output directory..." -ForegroundColor Yellow
if (Test-Path $OutputDir) {
    Remove-Item $OutputDir -Recurse -Force
}
New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
Write-Host "  [2/$totalSteps] Output directory ready." -ForegroundColor Green

# ==============================================================================
# Step 3: Copy runtime files (everything that stays OUTSIDE the archive)
# ==============================================================================
Write-Host "  [3/$totalSteps] Copying runtime files..." -ForegroundColor Yellow

# Core runtime files
$RuntimeFiles = @(
    "Game.exe",
    "Game.ini",
    "mkxp.json",
    "RGSS104E.dll",
    "x64-msvcrt-ruby310.dll",
    "zlib1.dll",
    "libgcc_s_seh-1.dll",
    "libgomp-1.dll",
    "libwinpthread-1.dll"
)

# Optional files (soundfont, licenses, etc.)
$OptionalFiles = @(
    "soundfont.sf2",
    "LICENSE.txt",
    "README.txt"
)

$copied = 0
foreach ($file in ($RuntimeFiles + $OptionalFiles)) {
    $src = Join-Path $GameDir $file
    if (Test-Path $src) {
        Copy-Item $src $OutputDir
        Write-Host "    ✓ $file" -ForegroundColor DarkGray
        $copied++
    } elseif ($RuntimeFiles -contains $file) {
        Write-Host "    ⚠ $file (not found — may be required!)" -ForegroundColor DarkYellow
    }
}

# Copy DLL subdirectories if they exist (some mkxp-z builds need these)
$dllDirs = @("lib", "Lib")
foreach ($dir in $dllDirs) {
    $src = Join-Path $GameDir $dir
    if (Test-Path $src) {
        Copy-Item $src (Join-Path $OutputDir $dir) -Recurse
        Write-Host "    ✓ $dir/" -ForegroundColor DarkGray
        $copied++
    }
}

# Copy fonts directory if present
$fontsDir = Join-Path $GameDir "Fonts"
if (Test-Path $fontsDir) {
    Copy-Item $fontsDir (Join-Path $OutputDir "Fonts") -Recurse
    $fontCount = (Get-ChildItem (Join-Path $OutputDir "Fonts") -File -Recurse).Count
    Write-Host "    ✓ Fonts/ ($fontCount files)" -ForegroundColor DarkGray
    $copied++
}

# Copy preload scripts (mkxp-z loads these from disk before the archive)
$scriptsDir = Join-Path $GameDir "scripts"
if (Test-Path $scriptsDir) {
    Copy-Item $scriptsDir (Join-Path $OutputDir "scripts") -Recurse
    $scriptCount = (Get-ChildItem (Join-Path $OutputDir "scripts") -File -Recurse).Count
    Write-Host "    ✓ scripts/ ($scriptCount files)" -ForegroundColor DarkGray
    $copied++
}

# Encrypt preload scripts using RGSSArchiver's RC4 ScriptProtector.
# A random 32-byte key is generated per build and embedded (obfuscated) in the
# bootstrap.rb that mkxp-z loads as its preloadScript.
$preloadDir = Join-Path $OutputDir "scripts\preload"
if (Test-Path $preloadDir) {
    Write-Host "  [3/$totalSteps] Encrypting preload scripts (RC4)..." -ForegroundColor Yellow

    # Generate random 32-byte key for this build
    $rc4Key = New-Object byte[] 32
    [System.Security.Cryptography.RandomNumberGenerator]::Fill($rc4Key)
    $rc4KeyHex = ($rc4Key | ForEach-Object { "{0:X2}" -f $_ }) -join ""

    # Concatenate all preload scripts into one file with eval-safe separators
    $scriptNames = @("ruby_classic_wrap.rb", "mkxp_wrap.rb", "win32_wrap.rb")
    $combinedContent = ""
    foreach ($name in $scriptNames) {
        $rbPath = Join-Path $preloadDir $name
        if (Test-Path $rbPath) {
            $combinedContent += [System.IO.File]::ReadAllText($rbPath, [System.Text.Encoding]::UTF8)
            $combinedContent += "`n"
            Remove-Item $rbPath -Force
            Write-Host "    ✓ $name → bundled" -ForegroundColor DarkGray
        }
    }

    # Write combined file, then encrypt with RGSSArchiver encrypt-scripts
    $combinedPath = Join-Path $preloadDir "combined.tmp"
    [System.IO.File]::WriteAllText($combinedPath, $combinedContent, [System.Text.UTF8Encoding]::new($false))

    $encryptedPath = Join-Path $preloadDir "preload.scscr"
    & $Archiver encrypt-scripts -i $combinedPath -o $encryptedPath -k $rc4KeyHex
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Failed to encrypt preload scripts!"
        exit 1
    }
    Remove-Item $combinedPath -Force

    # Split the 32-byte key into 8 fragments of 4 bytes each, XOR-masked
    $fragMasks = @(0x55, 0xAA, 0x33, 0xCC, 0x69, 0x96, 0x1E, 0xE1)
    $fragRuby = @()
    for ($f = 0; $f -lt 8; $f++) {
        $slice = @()
        for ($b = 0; $b -lt 4; $b++) { $slice += ("0x{0:X2}" -f ($rc4Key[$f * 4 + $b] -bxor $fragMasks[$f])) }
        $fragRuby += "[" + ($slice -join ",") + "]"
    }
    $fragArray = $fragRuby -join ","
    $maskArray = ($fragMasks | ForEach-Object { "0x{0:X2}" -f $_ }) -join ","

    # --- Security hardening: randomize variables, obfuscate path, verify integrity ---

    # Generate unique random variable names per build (defeats cross-build pattern matching)
    $decoyCount = Get-Random -Minimum 3 -Maximum 7
    $totalVars = 11 + $decoyCount
    $allVarNames = @(); $usedNames = @{}
    while ($allVarNames.Count -lt $totalVars) {
        $name = "_0x{0:X4}" -f (Get-Random -Minimum 0x1000 -Maximum 0xFFFF)
        if (!$usedNames.ContainsKey($name)) { $allVarNames += $name; $usedNames[$name] = $true }
    }
    $varNames  = $allVarNames[0..10]
    $decoyVars = $allVarNames[11..($totalVars - 1)]

    # Obfuscate the .scscr file path (no plaintext strings in decompressed code)
    $pathChars = ("scripts/preload/preload.scscr".ToCharArray() | ForEach-Object { [int]$_ }) -join ","

    # CRC32 integrity check (ISO 3309, matches Ruby's Zlib.crc32)
    $scscrBytes = [System.IO.File]::ReadAllBytes($encryptedPath)
    [long]$crc = 0xFFFFFFFFL
    foreach ($byte in $scscrBytes) {
        $crc = $crc -bxor [long]$byte
        for ($bit = 0; $bit -lt 8; $bit++) {
            if ($crc -band 1L) { $crc = ($crc -shr 1) -bxor 0xEDB88320L }
            else { $crc = $crc -shr 1 }
        }
    }
    $crc = ($crc -bxor 0xFFFFFFFFL) -band 0xFFFFFFFFL
    $crcHex = "0x{0:X8}" -f $crc

    # Generate dead-code decoy variables (random noise, never used in algorithm)
    $decoyLines = @()
    foreach ($dName in $decoyVars) {
        $dVal = "0x{0:X8}" -f (Get-Random -Minimum 0 -Maximum ([int]::MaxValue))
        $decoyLines += "${dName}=${dVal}"
    }
    $decoyRuby = $decoyLines -join "`n"

    # Build inner Ruby decryptor from template (single-quoted = no PS interpolation)
    # • Random var names per build   • File path from char codes (no plaintext)
    # • CRC32 integrity check        • Dead-code decoys
    # If .scscr is tampered, the key is silently corrupted → garbage eval → crash
    $innerRuby = @'
__DECOY__
__VA__=[__PATH__].pack("C*")
__VB__=File.binread(__VA__)
__VC__=[__FRAGS__]
__VD__=[__MASKS__]
__VE__=__VC__.each_with_index.flat_map{|f,i|f.map{|b|b^__VD__[i]}}
Zlib.crc32(__VB__)!=__CRC__&&__VE__.map!{|b|b^0xFF}
__VF__=__VB__[6..-1].bytes
__VG__=Array.new(256){|i|i};__VH__=0
256.times{|i|__VH__=(__VH__+__VG__[i]+__VE__[i%__VE__.size])&0xFF;__VG__[i],__VG__[__VH__]=__VG__[__VH__],__VG__[i]}
__VI__=0;__VJ__=0
__VK__=__VF__.map{|c|__VI__=(__VI__+1)&0xFF;__VJ__=(__VJ__+__VG__[__VI__])&0xFF;__VG__[__VI__],__VG__[__VJ__]=__VG__[__VJ__],__VG__[__VI__];(c^__VG__[(__VG__[__VI__]+__VG__[__VJ__])&0xFF]).chr}.join
eval(__VK__)
'@
    # Replace template placeholders with build-specific values
    $innerRuby = $innerRuby.Replace("__DECOY__", $decoyRuby)
    $innerRuby = $innerRuby.Replace("__PATH__", $pathChars)
    $innerRuby = $innerRuby.Replace("__CRC__", $crcHex)
    $innerRuby = $innerRuby.Replace("__FRAGS__", $fragArray)
    $innerRuby = $innerRuby.Replace("__MASKS__", $maskArray)
    $placeholders = @("__VA__","__VB__","__VC__","__VD__","__VE__","__VF__","__VG__","__VH__","__VI__","__VJ__","__VK__")
    for ($i = 0; $i -lt $placeholders.Count; $i++) {
        $innerRuby = $innerRuby.Replace($placeholders[$i], $varNames[$i])
    }
    Write-Host "    ✓ Hardened: random vars + path obfuscation + CRC32($crcHex) + $decoyCount decoys" -ForegroundColor DarkGray
    # Zlib-compress + Base64-encode the inner code so neither key nor algorithm is visible
    # ZLibStream produces RFC 1950 data (zlib header) which Ruby's Zlib::Inflate.inflate() expects
    $innerBytes = [System.Text.Encoding]::UTF8.GetBytes($innerRuby)
    $ms = [System.IO.MemoryStream]::new()
    $ds = [System.IO.Compression.ZLibStream]::new($ms, [System.IO.Compression.CompressionLevel]::SmallestSize)
    $ds.Write($innerBytes, 0, $innerBytes.Length)
    $ds.Close()
    $compressed = $ms.ToArray()
    $ms.Close()
    $blob = [Convert]::ToBase64String($compressed)

    # The bootstrap.rb only contains: require zlib, decode blob, inflate, eval
    # No key, no algorithm, no variable names — just an opaque blob
    $bootstrapContent = @"
require "zlib"
eval(Zlib::Inflate.inflate("$blob".unpack("m")[0]))
"@
    $bootstrapPath = Join-Path $preloadDir "bootstrap.rb"
    [System.IO.File]::WriteAllText($bootstrapPath, $bootstrapContent, [System.Text.UTF8Encoding]::new($false))
    Write-Host "    ✓ bootstrap.rb + preload.scscr generated (RC4 + Zlib packed)" -ForegroundColor DarkGray

    # Patch release mkxp.json to load only bootstrap.rb
    $mkxpRelease = Join-Path $OutputDir "mkxp.json"
    if (Test-Path $mkxpRelease) {
        $json = Get-Content $mkxpRelease -Raw
        $json = $json -replace '(?s)"preloadScript"\s*:\s*\[.*?\]', '"preloadScript": ["scripts/preload/bootstrap.rb"]'
        [System.IO.File]::WriteAllText($mkxpRelease, $json, [System.Text.UTF8Encoding]::new($false))
        Write-Host "    ✓ mkxp.json patched (preloadScript → bootstrap.rb)" -ForegroundColor DarkGray
    }
}

Write-Host "  [3/$totalSteps] Copied $copied items." -ForegroundColor Green

# ==============================================================================
# Step 3b: Generate SC data bundle (required for archive builds).
#   Ruby's Dir.exist? / File.read do NOT go through PhysFS, so script data
#   files inside the RGSSAD archive are invisible to the SC Script System's
#   normal filesystem loader.  generate_sc_data.rb bundles all .rb data files
#   into Data/sc_data.rxdata (a Marshal'd hash) which load_data CAN read from
#   the archive.  Without this, GameData::Metadata (and other script-defined
#   data) will be nil at runtime.
# ==============================================================================
if (!$SkipArchive) {
    Write-Host "  [3/$totalSteps] Generating SC data bundle..." -ForegroundColor Yellow
    $generatorScript = Join-Path $PSScriptRoot "generate_sc_data.rb"
    & ruby $generatorScript $GameDir
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Failed to generate SC data bundle!"
        exit 1
    }
}

# ==============================================================================
# Step 3c (Protected): Copy loose Audio/ folder.
#   mkxp-z audio subsystem reads directly from disk, not PhysFS.
# ==============================================================================
if ($Protected) {
    Write-Host "  [3/$totalSteps] Copying loose runtime folders..." -ForegroundColor Yellow
    $audioSrc = Join-Path $GameDir "Audio"
    if (Test-Path $audioSrc) {
        Copy-Item $audioSrc (Join-Path $OutputDir "Audio") -Recurse
        $audioCount = (Get-ChildItem (Join-Path $OutputDir "Audio") -File -Recurse).Count
        Write-Host "    ✓ Audio/ ($audioCount files)" -ForegroundColor DarkGray
    } else {
        Write-Host "    ⚠ Audio/ not found!" -ForegroundColor DarkYellow
    }
}

# ==============================================================================
# Step 4: Create encrypted archive (or copy raw folders)
# ==============================================================================
if (!$SkipArchive) {
    $stepLabel = if ($Protected) { "Creating protected archive (custom key)..." } else { "Creating encrypted archive..." }
    Write-Host "  [4/$totalSteps] $stepLabel" -ForegroundColor Yellow
    $archivePath = Join-Path $OutputDir "Game.rgssad"
    $archiverArgs = @("create", "-d", $GameDir, "-o", $archivePath)
    if ($Protected) { $archiverArgs += @("-k", "0xB7A3C1D9") }
    if ($Verbose) { $archiverArgs += "-v" }

    & $Archiver @archiverArgs
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Failed to create archive!"
        exit 1
    }
    Write-Host "  [4/$totalSteps] Archive created." -ForegroundColor Green
    # Clean up temporary data bundle from game directory
    $bundleCleanup = Join-Path $GameDir "Data\sc_data.rxdata"
    if (Test-Path $bundleCleanup) { Remove-Item $bundleCleanup }
} else {
    Write-Host "  [4/$totalSteps] Copying raw folders (no encryption)..." -ForegroundColor Yellow
    $folders = @("Data", "Graphics", "Audio", "Plugins", "PBS")
    foreach ($folder in $folders) {
        $src = Join-Path $GameDir $folder
        if (Test-Path $src) {
            $dest = Join-Path $OutputDir $folder
            Copy-Item $src $dest -Recurse
            $count = (Get-ChildItem $dest -File -Recurse).Count
            Write-Host "    ✓ $folder/ ($count files)" -ForegroundColor DarkGray
        }
    }
    Write-Host "  [4/$totalSteps] Raw copy complete." -ForegroundColor Green
}

# ==============================================================================
# Step 5 (Protected only): Patch Game.exe with custom encryption key
# ==============================================================================
if ($Protected) {
    Write-Host "  [5/$totalSteps] Patching Game.exe encryption key..." -ForegroundColor Yellow
    $gameExe = Join-Path $OutputDir "Game.exe"
    & $Archiver patch-exe -i $gameExe -k 0xB7A3C1D9
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Failed to patch Game.exe!"
        exit 1
    }
    Write-Host "  [5/$totalSteps] Game.exe patched — decrypter tools will fail." -ForegroundColor Green
}

# ==============================================================================
# Hide supporting files (only Game.exe and DLLs remain visible in Explorer)
# ==============================================================================
$hiddenItems = @("Game.ini", "mkxp.json", "Game.rgssad", "soundfont.sf2", "scripts", "Fonts")
foreach ($item in $hiddenItems) {
    $path = Join-Path $OutputDir $item
    if (Test-Path $path) {
        $fi = Get-Item $path -Force
        $fi.Attributes = $fi.Attributes -bor [System.IO.FileAttributes]::Hidden
    }
}

# ==============================================================================
# Summary
# ==============================================================================
$totalSize = (Get-ChildItem $OutputDir -Recurse -File -Force | Measure-Object -Property Length -Sum).Sum
$sizeMB = [math]::Round($totalSize / 1MB, 1)

Write-Host ""
Write-Host "  ══════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  Release build complete!" -ForegroundColor Green
Write-Host "  Location : $OutputDir" -ForegroundColor White
Write-Host "  Size     : $sizeMB MB" -ForegroundColor White
Write-Host "  ══════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""
