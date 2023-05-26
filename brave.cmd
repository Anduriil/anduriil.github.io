@echo off
set "chromeExe32=%ProgramFiles%\BraveSoftware\Brave-Browser\Application\brave.exe"
set "chromeExe64=%ProgramFiles(x86)%\BraveSoftware\Brave-Browser\Application\brave.exe"

if exist "%chromeExe32%" (
    start "" "%chromeExe32%" --app=https://anduriil.github.io/
    exit
) else if exist "%chromeExe64%" (
    start "" "%chromeExe64%" --app=https://anduriil.github.io/
    exit
) else (
    color 0c
    echo Brave varsayılan dizinde bulunamadı
    pause
    exit
)
