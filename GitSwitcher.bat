@echo off
REM Menu for selecting Git profile

echo Select Git profile:
echo 1. Work
echo 2. Personal

set /p choice="Enter your choice (1 or 2): "

if "%choice%"=="1" (
    set GIT_USERNAME=DimeskiMihajlo
    set GIT_EMAIL=mihajlo.dimeski@wideopenwest.com
) else if "%choice%"=="2" (
    set GIT_USERNAME=MihajloDimeski
    set GIT_EMAIL=mihajlodimeski@gmail.com
) else (
    echo Invalid choice. Exiting.
    exit /b 1
)

REM Update Git global config
git config --global user.name "%GIT_USERNAME%"
git config --global user.email "%GIT_EMAIL%"

REM Display the new credentials
echo Updated Git global credentials:
git config --global user.name
git config --global user.email

pause
