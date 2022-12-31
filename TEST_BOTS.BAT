set GRP_PATH=%~dp0pk3
REM set MAP=maps/burningmemory.map
set MAP=maps/THERMALBASE.map
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
start netduke32 -nosetup -t23 -c1 -m -j%GRP_PATH% /q%NUMBOTS% /a -map %MAP%
goto END

:NOAI
start netduke32 -nosetup -t23 -c1 -m -j%GRP_PATH% /q16 -map %MAP%
goto END

REM gdb --args netduke32.exe -nosetup -t23 -c1 -m -q16 -jD:/Modding/GitHub/StrikerDM/pk3 -map maps/THERMALBASE.MAP

:END