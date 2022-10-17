set EXTRACMD=+r_showfps 1
set HOSTCMD=-m -q5
set MAP=e3l9.map
set NUMPLAYERS=3
rem set PORT=30000
set PORT=23513
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

start netduke32 +r_maxfps 60 -nologo -noinstancechecking -nosetup -t23 -c2 -j%GRP_PATH% %HOSTCMD% %EXTRACMD% -map %MAP% /net /n0:%NUMPLAYERS%

start netduke32 -cfg player2.cfg -name Player2 +r_maxfps 30 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23122
if %NUMPLAYERS%==2 goto EXIT

start netduke32 -cfg player3.cfg -name Player3 +r_maxfps 30 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23123
if %NUMPLAYERS%==3 goto EXIT

start netduke32 -cfg player4.cfg -name Player4 +r_maxfps 30 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23124
if %NUMPLAYERS%==4 goto EXIT

start netduke32 -cfg player5.cfg -name Player5 +r_maxfps 30 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23125
if %NUMPLAYERS%==5 goto EXIT

start netduke32 -cfg player6.cfg -name Player6 +r_maxfps 30 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23126
if %NUMPLAYERS%==6 goto EXIT

start netduke32 -cfg player7.cfg -name Player7 +r_maxfps 30 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23127
if %NUMPLAYERS%==7 goto EXIT

start netduke32 -cfg player8.cfg -name Player8 +r_maxfps 30 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23128
if %NUMPLAYERS%==8 goto EXIT

start netduke32 -cfg player9.cfg -name Player9 +r_maxfps 30 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23129
if %NUMPLAYERS%==9 goto EXIT

start netduke32 -cfg player10.cfg -name Player10 +r_maxfps 30 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23130
if %NUMPLAYERS%==10 goto EXIT

start netduke32 -cfg player11.cfg -name Player11 +r_maxfps 30 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23131
if %NUMPLAYERS%==11 goto EXIT

start netduke32 -cfg player12.cfg -name Player12 +r_maxfps 30 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23132
if %NUMPLAYERS%==12 goto EXIT

:EXIT
exit