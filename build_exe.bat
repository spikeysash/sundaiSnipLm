@echo off
echo Building SnipLM executable...
echo.

:: Check if pyinstaller is installed
pip show pyinstaller >nul 2>&1
if errorlevel 1 (
    echo PyInstaller not found. Installing...
    pip install pyinstaller
)

:: Build the executable
echo Creating executable...
pyinstaller --onefile --windowed --name SnipLM snip_tool.py

:: Copy config files
echo Copying configuration files...
copy config.json dist\config.json
copy memory.json dist\memory.json

echo.
echo Build complete! Your executable is in the 'dist' folder.
echo.
pause


