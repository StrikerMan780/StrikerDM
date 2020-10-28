set GRP_PATH=%~dp0Builds
D:
cd "D:\sourcecode\eduke32-cs"
start eduke32-oldmp -nologo -noinstancechecking -nosetup -name Player1 -t23 -c1 -y32 -g %GRP_PATH%\StrikerDM-DEV.PK3 /net /n0:3
start eduke32-oldmp -cfg player2.cfg -nologo -noinstancechecking -nosetup -name Player2 -g %GRP_PATH%\StrikerDM-DEV.PK3 /net /n0 127.0.0.1 /p23122
start eduke32-oldmp -cfg player3.cfg -nologo -noinstancechecking -nosetup -name Player3 -g %GRP_PATH%\StrikerDM-DEV.PK3 /net /n0 127.0.0.1 /p23123