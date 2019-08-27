set GRP_PATH=%~dp0Builds
C:
cd "C:\Meltdown\Duke Nukem 3D\EDuke32"
@echo off
cls
start eduke32-oldmp -nosetup -g %GRP_PATH%\StrikerDM-DEV.PK3 -g .\StrikerDM_WT.pk3
exit