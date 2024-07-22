@echo off
setlocal

where python >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed on this PC.
    pause
    exit /b 1
)

for /f "tokens=2 delims==" %%i in ('python -c "import sys; print(sys.version[:5])"') do set PY_VER=%%i

if "%PY_VER%"=="3.11." (
    echo Python 3.11 is installed on this PC
) else (
    echo Python 3.11 is not installed. Installed version: %PY_VER%
)

pause
