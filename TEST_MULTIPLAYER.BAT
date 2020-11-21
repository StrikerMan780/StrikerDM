set MAP=e3l9.map
set NUMPLAYERS=2
set PORT=30000
rem set PORT=23513
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

start /affinity 1 eduke32-oldmp -nologo -noinstancechecking -nosetup -name Player1 -debugsync -t23 -c1 -m -j%GRP_PATH% -map %MAP% /net /n0:%NUMPLAYERS%

start /affinity 2 eduke32-oldmp -cfg player2.cfg -nologo -noinstancechecking -nosetup -debugsync -name Player2 -j%GRP_PATH% -map %MAP% /net /n0 127.0.0.1:%PORT% /p23122
if %NUMPLAYERS%==2 goto EXIT

start /affinity 3 eduke32-oldmp -cfg player3.cfg -nologo -noinstancechecking -nosetup -debugsync -name Player3 -j%GRP_PATH% -map %MAP% /net /n0 127.0.0.1:%PORT% /p23123
if %NUMPLAYERS%==3 goto EXIT

start /affinity 4 eduke32-oldmp -cfg player4.cfg -nologo -noinstancechecking -nosetup -debugsync -name Player4 -j%GRP_PATH% -map %MAP% /net /n0 127.0.0.1:%PORT% /p23124
if %NUMPLAYERS%==4 goto EXIT

start /affinity 5 eduke32-oldmp -cfg player5.cfg -nologo -noinstancechecking -nosetup -debugsync -name Player5 -j%GRP_PATH% -map %MAP% /net /n0 127.0.0.1:%PORT% /p23125
if %NUMPLAYERS%==5 goto EXIT

start /affinity 6 eduke32-oldmp -cfg player6.cfg -nologo -noinstancechecking -nosetup -debugsync -name Player6 -j%GRP_PATH% -map %MAP% /net /n0 127.0.0.1:%PORT% /p23126
if %NUMPLAYERS%==6 goto EXIT

start /affinity 7 eduke32-oldmp -cfg player7.cfg -nologo -noinstancechecking -nosetup -debugsync -name Player7 -j%GRP_PATH% -map %MAP% /net /n0 127.0.0.1:%PORT% /p23127
if %NUMPLAYERS%==7 goto EXIT

start /affinity 8 eduke32-oldmp -cfg player8.cfg -nologo -noinstancechecking -nosetup -debugsync -name Player8 -j%GRP_PATH% -map %MAP% /net /n0 127.0.0.1:%PORT% /p23128
if %NUMPLAYERS%==8 goto EXIT

start /affinity 9 eduke32-oldmp -cfg player9.cfg -nologo -noinstancechecking -nosetup -debugsync -name Player9 -j%GRP_PATH% -map %MAP% /net /n0 127.0.0.1:%PORT% /p23128
if %NUMPLAYERS%==9 goto EXIT

:EXIT
exit