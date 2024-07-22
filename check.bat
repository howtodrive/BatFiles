@echo off
setlocal

where python >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed on this PC.
    pause
    exit /b 1
)

python --version 2>&1 | findstr /r /c:"3\.11\.[0-9]*" >nul
if %errorlevel% equ 0 (
    echo Python 3.11 is installed on this PC
) else (
    echo Python 3.11 is not installed. Installed version: 
    python --version 2>&1
)

pause
