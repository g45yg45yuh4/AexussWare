@echo off
:: Check if the script is running as admin
net session >nul 2>&1
if %errorLevel% neq 0 (
    :: If not admin, request admin privileges
    echo Please grant administrator privileges to continue.
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

:: Main script content
echo AexussWare is currently updated!
echo.
echo Version 1.03
pause
