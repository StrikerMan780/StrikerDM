set GRP_PATH=%~dp0Builds
C:
cd "C:\Meltdown\Duke Nukem 3D\EDuke32"
@echo off
cls
echo With AI?
choice
IF ERRORLEVEL 2 GOTO NOAI
IF ERRORLEVEL 1 GOTO WITHAI

:WITHAI
start eduke32-oldmp -nosetup -tx -c1 -g %GRP_PATH%\StrikerDM-DEV.PK3 /q8 /a
exit

:NOAI
start eduke32-oldmp -nosetup -tx -c1 -g %GRP_PATH%\StrikerDM-DEV.PK3 /q8
exit