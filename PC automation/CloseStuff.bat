@echo off
echo Stopping unnecessary services and closing apps...

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrative privileges.
    echo Relaunching with elevated permissions...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Stop services
net stop "Sonarr"
net stop "Radarr"
net stop "Prowlarr"
net stop "qBittorrent"
net stop "PlexService"
net stop "Parsec"
net stop "Plex Update Service"


:: Kill apps
taskkill /IM Monitor.exe /F
taskkill /IM PlexServiceTray.exe /F