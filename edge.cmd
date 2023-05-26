@echo off
set "chromeExe32=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
set "chromeExe64=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"

if exist "%chromeExe32%" (
    start "" "%chromeExe32%" --app=https://anduriil.github.io/
    exit
) else if exist "%chromeExe64%" (
    start "" "%chromeExe64%" --app=https://anduriil.github.io/
    exit
) else (
    color 0c
    echo Microsoft Edge varsayılan dizinde bulunamadı
    pause
    exit
)
