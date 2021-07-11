set GRP_PATH=%~dp0Builds
C:
cd "C:\Meltdown\Duke Nukem 3D\EDuke32"
start netduke32 -cfg player2.cfg -nologo -noinstancechecking -nosetup -name Player2 -g %GRP_PATH%\StrikerDM-DEV.PK3 /net /n0 127.0.0.1:30000 /p23122