@echo off
set /a var1=1000
:LOOP
if %var1% gtr 9999 goto :END
wget -nd -H -p -A jpg,jpeg,png,gif -e robots=off https://prnt.sc/sc%var%
set /a var+=1
goto LOOP
:END
pause