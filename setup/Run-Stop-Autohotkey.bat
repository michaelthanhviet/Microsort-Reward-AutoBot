@echo off
setlocal

REM === CHỈNH TẠI ĐÂY ===
REM Đường dẫn đến AutoHotkey.exe
set SCRIPT_DIR=%~dp0
set PROJECT_ROOT=%SCRIPT_DIR%..
set AHK_EXE="C:\Program Files\AutoHotkey\v1.1.37.02\AutoHotkeyU64.exe"

REM File script AHK để test
set AHK_SCRIPT="%PROJECT_ROOT%\kill_webauthn.ahk"

REM ========================

echo Đang chạy AutoHotkey...
echo EXE: %AHK_EXE%
echo SCRIPT: %AHK_SCRIPT%
echo.

REM Chạy AHK
start "" %AHK_EXE% %AHK_SCRIPT%
echo Script is running...
pause >NUL
REM === CLOSE AHK AFTER SUCCESS ===
echo Stopping AutoHotkey helper...
taskkill /IM AutoHotkeyU64.exe /F >nul 2>&1

echo Press Enter to close.
pause >NUL
exit /b
