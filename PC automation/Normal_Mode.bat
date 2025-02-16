@echo off
REM Set refresh rate to 144Hz
nircmd.exe setdisplay 1920 1080 32 144 -updatereg

REM Set maximum processor state to 100% for the Balanced power plan
powercfg /setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e SUB_PROCESSOR PROCTHROTTLEMAX 100
powercfg /setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e SUB_PROCESSOR PROCTHROTTLEMAX 100

REM Apply changes to the power plan
powercfg /s 381b4222-f694-41f0-9685-ff5bb260df2e

REM Start NitroSense
:: start "" "C:\Users\FlamyMind\Desktop\All\Apps\NitroSense.lnk"

REM Start the AutoHotkey script
:: start "" "C:\Users\FlamyMind\Desktop\All\Apps\Discrete GPU setting.ahk"