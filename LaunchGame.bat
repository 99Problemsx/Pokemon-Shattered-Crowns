@echo off
echo ===============================================
echo    Pokemon Shattered Crowns - Secure Launcher
echo ===============================================
echo.

:: Check if GameData exists and has files
if not exist "GameData\Graphics" (
    echo Decrypting game assets...
    echo This only happens on first launch.
    echo.
    ruby Tools\decrypt_assets.rb
    if errorlevel 1 (
        echo.
        echo ERROR: Failed to decrypt assets!
        echo Make sure Ruby is installed and EncryptedData folder exists.
        pause
        exit /b 1
    )
    echo.
    echo Decryption complete!
    echo.
)

echo Launching game...
start "" "Game.exe"
