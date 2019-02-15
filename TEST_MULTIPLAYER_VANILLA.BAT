set GRP_PATH=%~dp0Builds
C:
cd "C:\Meltdown\Duke Nukem 3D\EDuke32"
start eduke32-oldmp -nologo -noinstancechecking -nosetup -name Player1 -t23 -c2 -s3 -map e1l1.map /net /n0:3
start eduke32-oldmp -cfg player2.cfg -nologo -noinstancechecking -nosetup -name Player2 -map e1l1.map /net /n0 127.0.0.1:30000 /p23122
start eduke32-oldmp -cfg player3.cfg -nologo -noinstancechecking -nosetup -name Player3 -map e1l1.map /net /n0 127.0.0.1:30000 /p23123