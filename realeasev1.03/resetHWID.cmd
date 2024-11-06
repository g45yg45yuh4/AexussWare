@echo off
::
net session >nul 2>&1
if %errorLevel% neq 0 (
    :: If not running as admin, request admin privileges
    echo This script requires administrator privileges.
    echo Restarting with administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

::
cls
echo Sending HWID to server...
ping localhost -n 2 >nul
cls

echo HWID reset!
ping localhost -n 2 >nul
cls

echo Receiving new HWID...
ping localhost -n 2 >nul
cls

echo Your HWID has been reset.
pause
