@echo off
cls

echo [42mFIELD SIMULATOR 2025[0m
echo.
echo Keyboard Controls:
echo.
echo Left arrow key + Enter: Button 1
echo.
echo Right arrow key + Enter: Button 2

echo Download the latest version at [1mhttps://farmcraft9.github.io/farmcraft-software/[0m
cd assets
powershell -noexit -ExecutionPolicy Bypass -File FieldSimulator2025.ps1
pause
