set GRP_PATH=%~dp0Builds
D:
cd "D:\sourcecode\eduke32-cs"
@echo off
cls
start eduke32-oldmp -nosetup -g %GRP_PATH%\StrikerDM-DEV.PK3 -g .\StrikerDM_WT.pk3
exit