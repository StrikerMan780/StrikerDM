SETLOCAL EnableDelayedExpansion
set EXTRACMD=
set HOSTCMD=-m
set MAP=e3l9.map
set /a NUMPLAYERS=1
set /a FAKEPLAYERS=!NUMPLAYERS!+1
set FAKECMD=-q!FAKEPLAYERS!
set AI=NO
set AICMD=
set NETCMD=
set PORT=30000
rem set PORT=23513
set EDUKE_PATH="D:\sourcecode\eduke32-cs"

:MENU
@echo off
cls
echo EDuke32-OldMP Path: %EDUKE_PATH%
echo Current Path: %~dp0
echo.
echo Choose:
echo 1. Vanilla
echo 2. StrikerDM
echo 3. Duke64 TC
echo.
echo 4. AI Enabled (%AI%) %AICMD%
echo 5. Real Players (%NUMPLAYERS%) %NETCMD%
echo 6. Total Players (Incl. Bots) (%FAKEPLAYERS%) %FAKECMD%
echo.
echo 7. Quit
CHOICE /N /C:1234567
IF ERRORLEVEL 7 GOTO EXIT
IF ERRORLEVEL 6 GOTO INCFAKEPLAYERS
IF ERRORLEVEL 5 GOTO INCPLAYERS
IF ERRORLEVEL 4 GOTO TOGGLEAI
IF ERRORLEVEL 3 GOTO DUKE64
IF ERRORLEVEL 2 GOTO STRIKERDM
IF ERRORLEVEL 1 GOTO VANILLA

:TOGGLEAI
if %AI%==NO (
	set AI=YES
	set AICMD=-a
) else (
	set AI=NO
	set AICMD=
)
goto MENU

:INCPLAYERS
set /a NUMPLAYERS=!NUMPLAYERS!+1
if !NUMPLAYERS!==13 (set NUMPLAYERS=1)

if !NUMPLAYERS!==1 (
	set NETCMD=
) else (
	set NETCMD=/net /n0:!NUMPLAYERS!
)

if !FAKEPLAYERS! LSS !NUMPLAYERS! (
	set FAKEPLAYERS=!NUMPLAYERS!
	set FAKECMD=-q!FAKEPLAYERS!
)
goto MENU


:INCFAKEPLAYERS
set /a FAKEPLAYERS=!FAKEPLAYERS!+1
if !FAKEPLAYERS!==16 (set FAKEPLAYERS=!NUMPLAYERS!)

if !FAKEPLAYERS!==!NUMPLAYERS! (
	set FAKECMD=
) else (
	set FAKECMD=-q!FAKEPLAYERS!
)
goto MENU

:VANILLA
set GRP_PATH=
goto START

:STRIKERDM
set GRP_PATH=%~dp0.\pk3
echo %GRP_PATH%
goto START

:DUKE64
set GRP_PATH=%~dp0.\Duke64
echo %GRP_PATH%
goto START

:START
cd /d %EDUKE_PATH%

start netduke32 -nologo -noinstancechecking -nosetup -t23 -c2 -j%GRP_PATH% %HOSTCMD% %FAKECMD% %AICMD% %EXTRACMD% -map %MAP% %NETCMD%
if %NUMPLAYERS%==1 goto EXIT

start netduke32 -cfg player2.cfg -name Player2 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23122
if %NUMPLAYERS%==2 goto EXIT

start netduke32 -cfg player3.cfg -name Player3 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23123
if %NUMPLAYERS%==3 goto EXIT

start netduke32 -cfg player4.cfg -name Player4 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23124
if %NUMPLAYERS%==4 goto EXIT

start netduke32 -cfg player5.cfg -name Player5 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23125
if %NUMPLAYERS%==5 goto EXIT

start netduke32 -cfg player6.cfg -name Player6 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23126
if %NUMPLAYERS%==6 goto EXIT

start netduke32 -cfg player7.cfg -name Player7 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23127
if %NUMPLAYERS%==7 goto EXIT

start netduke32 -cfg player8.cfg -name Player8 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23128
if %NUMPLAYERS%==8 goto EXIT

start netduke32 -cfg player9.cfg -name Player9 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23129
if %NUMPLAYERS%==9 goto EXIT

start netduke32 -cfg player10.cfg -name Player10 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23130
if %NUMPLAYERS%==10 goto EXIT

start netduke32 -cfg player11.cfg -name Player11 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23131
if %NUMPLAYERS%==11 goto EXIT

start netduke32 -cfg player12.cfg -name Player12 -nologo -noinstancechecking -nosetup -j%GRP_PATH% %EXTRACMD% /net /n0 127.0.0.1:%PORT% /p23132
if %NUMPLAYERS%==12 goto EXIT

:EXIT
echo See you later.