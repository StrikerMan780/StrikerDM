set GRP_PATH=%~dp0Builds
C:
cd "C:\Meltdown\Duke Nukem 3D\EDuke32"
start eduke32-oldmp -nologo -noinstancechecking -nosetup -name Player1 -tx -c1 -y32 -g %GRP_PATH%\StrikerDM-DEV.PK3 /net /n0:3