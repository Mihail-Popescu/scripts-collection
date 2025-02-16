@echo off
REM Set refresh rate to 60Hz
nircmd.exe setdisplay 1920 1080 32 60 -updatereg

REM Set maximum processor state to 90% for the Balanced power plan
powercfg /setacvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e SUB_PROCESSOR PROCTHROTTLEMAX 90
powercfg /setdcvalueindex 381b4222-f694-41f0-9685-ff5bb260df2e SUB_PROCESSOR PROCTHROTTLEMAX 90

REM Apply changes to the power plan
powercfg /s 381b4222-f694-41f0-9685-ff5bb260df2e

REM Start NitroSense
:: start "" "C:\Users\ReplaceWithYourUser\Desktop\All\Apps\NitroSense.lnk"

REM Start the AutoHotkey script
:: start "" "C:\Users\ReplaceWithYourUser\Desktop\All\Apps\Discrete GPU setting.ahk"