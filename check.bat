@echo off
setlocal

REM Проверка, установлен ли Python
where python >nul 2>&1
if %errorlevel% neq 0 (
    echo Python не установлен на этом ПК.
    pause
    exit /b 1
)

REM Получение версии Python
for /f "tokens=2 delims==" %%i in ('python -c "import sys; print(sys.version[:5])"') do set PY_VER=%%i

REM Проверка версии Python 3.11
if "%PY_VER%"=="3.11." (
    echo Python 3.11 установлен на этом ПК.
) else (
    echo Python 3.11 не установлен. Установленная версия: %PY_VER%
)

pause
