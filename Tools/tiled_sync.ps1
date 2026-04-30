<#
.SYNOPSIS
    Sync RPG Maker XP maps with Tiled TMX files.

.DESCRIPTION
    Export all maps to TMX (for editing in Tiled) or import edited TMX files
    back into the game's rxdata format. Events and metadata are preserved.

.PARAMETER Action
    "export" to convert rxdata → TMX, "import" to convert TMX → rxdata.

.PARAMETER TiledDir
    Directory for TMX files. Defaults to "TiledMaps" in the game root.

.EXAMPLE
    .\Tools\tiled_sync.ps1 export
    .\Tools\tiled_sync.ps1 import
    .\Tools\tiled_sync.ps1 export -TiledDir C:\MyMaps
#>
param(
    [Parameter(Mandatory=$true, Position=0)]
    [ValidateSet("export", "import")]
    [string]$Action,

    [Parameter(Position=1)]
    [string]$TiledDir
)

$ErrorActionPreference = "Stop"

# Resolve paths
$GameRoot = Split-Path -Parent $PSScriptRoot
$ProjectPath = Join-Path $PSScriptRoot "TiledConverter" "TiledConverter.csproj"

if (-not $TiledDir) {
    $TiledDir = Join-Path $GameRoot "TiledMaps"
}

# Verify project exists
if (-not (Test-Path $ProjectPath)) {
    Write-Error "TiledConverter project not found at: $ProjectPath"
    exit 1
}

Write-Host "Game root: $GameRoot" -ForegroundColor Cyan
Write-Host "Tiled dir: $TiledDir" -ForegroundColor Cyan
Write-Host ""

switch ($Action) {
    "export" {
        Write-Host "=== Exporting all maps to TMX ===" -ForegroundColor Green
        & dotnet run --project $ProjectPath -- export-all $GameRoot $TiledDir
        if ($LASTEXITCODE -ne 0) {
            Write-Error "Export failed with exit code $LASTEXITCODE"
            exit $LASTEXITCODE
        }
        Write-Host ""
        Write-Host "Maps exported to: $TiledDir" -ForegroundColor Green
        Write-Host "Open TMX files in Tiled to edit, then run 'tiled_sync.ps1 import' to apply changes." -ForegroundColor Yellow
    }
    "import" {
        if (-not (Test-Path $TiledDir)) {
            Write-Error "Tiled directory not found: $TiledDir. Run 'tiled_sync.ps1 export' first."
            exit 1
        }
        Write-Host "=== Importing TMX maps back to rxdata ===" -ForegroundColor Green
        & dotnet run --project $ProjectPath -- import-all $TiledDir $GameRoot
        if ($LASTEXITCODE -ne 0) {
            Write-Error "Import failed with exit code $LASTEXITCODE"
            exit $LASTEXITCODE
        }
        Write-Host ""
        Write-Host "Maps imported successfully. Tile data updated, events preserved." -ForegroundColor Green
    }
}
