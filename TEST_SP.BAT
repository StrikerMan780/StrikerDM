set EDUKE_PATH="D:\sourcecode\eduke32-cs"

@echo off
cls
echo EDuke32-OldMP Path: %EDUKE_PATH%
echo Current Path: %~dp0
echo.
echo Choose Mod:
echo 1. Vanilla
echo 2. StrikerDM
echo 3. Quit
CHOICE /N /C:123
IF ERRORLEVEL 3 GOTO EXIT
IF ERRORLEVEL 2 GOTO STRIKERDM
IF ERRORLEVEL 1 GOTO VANILLA

:VANILLA
set GRP_PATH=
goto START

:STRIKERDM
set GRP_PATH=%~dp0pk3
echo %GRP_PATH%
goto START

:START
cd /d %EDUKE_PATH%

start /affinity 1 netduke32 -noinstancechecking -nosetup -j%GRP_PATH%

:EXIT
exit