@echo off
set "chromeExe32=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
set "chromeExe64=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"

if exist "%chromeExe32%" (
    start "" "%chromeExe32%" --app=https://valiant-sapphire-trillium.glitch.me/
    exit
) else if exist "%chromeExe64%" (
    start "" "%chromeExe64%" --app=https://valiant-sapphire-trillium.glitch.me/
    exit
) else (
    color 0c
    echo Google Chrome varsayılan dizinde bulunamadı
    pause
    exit
)
