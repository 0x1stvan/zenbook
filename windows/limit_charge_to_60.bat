@echo off
REM This script sets the ChargingRate registry value to 60, wihout using myasus, no restart needed

REG ADD "HKLM\SOFTWARE\ASUS\ASUS System Control Interface\AsusOptimization\ASUS Keyboard Hotkeys" /v ChargingRate /t REG_DWORD /d 60 /f

REM Check if the registry value was set successfully
if %errorlevel% equ 0 (
    echo The registry value was set successfully.
    REM Restart the ASUSOptimization service
    powershell -command "Restart-Service 'ASUSOptimization'"
    if %errorlevel% equ 0 (
        echo The ASUSOptimization service was restarted successfully.
    ) else (
        echo Failed to restart the ASUSOptimization service.
    )
) else (
    echo Failed to set the registry value.
)

pause
