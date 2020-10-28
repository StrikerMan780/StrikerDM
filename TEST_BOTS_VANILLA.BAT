set GRP_PATH=%~dp0Builds
D:
cd "D:\sourcecode\eduke32-cs"
@echo off
cls
echo With AI?
choice
IF ERRORLEVEL 2 GOTO NOAI
IF ERRORLEVEL 1 GOTO WITHAI

:WITHAI
cls
echo How Many Bots? (1-7)
CHOICE /N /C:1234567
IF ERRORLEVEL 1 SET NUMBOTS=2
IF ERRORLEVEL 2 SET NUMBOTS=3
IF ERRORLEVEL 3 SET NUMBOTS=4
IF ERRORLEVEL 4 SET NUMBOTS=5
IF ERRORLEVEL 5 SET NUMBOTS=6
IF ERRORLEVEL 6 SET NUMBOTS=7
IF ERRORLEVEL 7 SET NUMBOTS=8
start eduke32-oldmp -nosetup -tx -c1 -m /q%NUMBOTS% /a -map e3l9.map
exit

:NOAI
start eduke32-oldmp -nosetup -tx -c1 -m /q8 -map e3l9.map
exit