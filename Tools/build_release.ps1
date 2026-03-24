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
$Archiver  = Join-Path $ToolsDir "RGSSArchiver\bin\Release\net8.0\win-x64\publish\RGSSArchiver.exe"
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
# Step 1: Build the archiver tool (if needed)
# ==============================================================================
if (!$SkipArchive) {
    if (!(Test-Path $Archiver)) {
        Write-Host "  [1/$totalSteps] Building RGSSArchiver..." -ForegroundColor Yellow
        $csproj = Join-Path $ToolsDir "RGSSArchiver\RGSSArchiver.csproj"
        dotnet publish $csproj -c Release -r win-x64 --self-contained -p:PublishSingleFile=true -verbosity:quiet
        if ($LASTEXITCODE -ne 0) {
            Write-Error "Failed to build RGSSArchiver. Is .NET SDK installed?"
            exit 1
        }
        Write-Host "  [1/$totalSteps] RGSSArchiver built successfully." -ForegroundColor Green
    } else {
        Write-Host "  [1/$totalSteps] RGSSArchiver already built." -ForegroundColor DarkGray
    }
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
    "zlib1.dll"
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

Write-Host "  [3/$totalSteps] Copied $copied items." -ForegroundColor Green

# ==============================================================================
# Step 3b (Protected): Copy loose folders that MUST exist on disk.
#   - Audio/  : mkxp-z audio subsystem reads directly from disk, not PhysFS
#   - Data/   : PluginScripts.rxdata, Scripts.rxdata, map data etc.
# ==============================================================================
if ($Protected) {
    Write-Host "  [3/$totalSteps] Copying loose runtime folders..." -ForegroundColor Yellow

    # Audio — mkxp-z reads audio from filesystem, not the RGSSAD archive
    $audioSrc = Join-Path $GameDir "Audio"
    if (Test-Path $audioSrc) {
        Copy-Item $audioSrc (Join-Path $OutputDir "Audio") -Recurse
        $audioCount = (Get-ChildItem (Join-Path $OutputDir "Audio") -File -Recurse).Count
        Write-Host "    ✓ Audio/ ($audioCount files)" -ForegroundColor DarkGray
    } else {
        Write-Host "    ⚠ Audio/ not found!" -ForegroundColor DarkYellow
    }

    # Data — PluginScripts.rxdata, Scripts.rxdata and map data must be on disk
    $dataSrc = Join-Path $GameDir "Data"
    if (Test-Path $dataSrc) {
        Copy-Item $dataSrc (Join-Path $OutputDir "Data") -Recurse
        $dataCount = (Get-ChildItem (Join-Path $OutputDir "Data") -File -Recurse).Count
        Write-Host "    ✓ Data/ ($dataCount files)" -ForegroundColor DarkGray
    } else {
        Write-Host "    ⚠ Data/ not found!" -ForegroundColor DarkYellow
    }
}

# ==============================================================================
# Step 4: Create encrypted archive (or copy raw folders)
# ==============================================================================
if (!$SkipArchive) {
    $stepLabel = if ($Protected) { "Creating protected archive (custom key)..." } else { "Creating encrypted archive..." }
    Write-Host "  [4/$totalSteps] $stepLabel" -ForegroundColor Yellow
    $archivePath = Join-Path $OutputDir "Game.rgssad"
    $archiverArgs = @("-d", $GameDir, "-o", $archivePath)
    if ($Protected) { $archiverArgs += "--protected" }
    if ($Verbose) { $archiverArgs += "-v" }

    & $Archiver @archiverArgs
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Failed to create archive!"
        exit 1
    }
    Write-Host "  [4/$totalSteps] Archive created." -ForegroundColor Green
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
    & $Archiver patch-exe -i $gameExe
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Failed to patch Game.exe!"
        exit 1
    }
    Write-Host "  [5/$totalSteps] Game.exe patched — decrypter tools will fail." -ForegroundColor Green
}

# ==============================================================================
# Summary
# ==============================================================================
$totalSize = (Get-ChildItem $OutputDir -Recurse -File | Measure-Object -Property Length -Sum).Sum
$sizeMB = [math]::Round($totalSize / 1MB, 1)

Write-Host ""
Write-Host "  ══════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host "  Release build complete!" -ForegroundColor Green
Write-Host "  Location : $OutputDir" -ForegroundColor White
Write-Host "  Size     : $sizeMB MB" -ForegroundColor White
Write-Host "  ══════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""
