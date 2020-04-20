@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set /p "scriptName=Enter Script Name: "
cls
echo Type:
echo 1.) UP
echo 2.) DOWN
rem set /p "scriptType=Choose your selection: "
rem if '%scriptType%'=='1' set "suffix=up"
rem if '%scriptType%'=='2' set "suffix=down"
set "datestamp=%YYYY%%MM%%DD%%HH%%Min%%Sec%"
rem type NUL > "%datestamp%_%scriptName%_%suffix%".sql
type NUL > "%datestamp%_%scriptName%_up".sql
type NUL > "%datestamp%_%scriptName%_down".sql
exit
