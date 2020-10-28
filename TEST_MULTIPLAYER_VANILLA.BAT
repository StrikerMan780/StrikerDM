set GRP_PATH=%~dp0Builds
set MAP=e3l9.map
set NUMPLAYERS=4

D:
cd "D:\sourcecode\eduke32-cs"

start /affinity 1 eduke32-oldmp -nologo -noinstancechecking -nosetup -name Player1 -t23 -c1 -m -map %MAP% /net /n0:%NUMPLAYERS%

start /affinity 2 eduke32-oldmp -cfg player2.cfg -nologo -noinstancechecking -nosetup -name Player2 -map %MAP% /net /n0 127.0.0.1 /p23122
if %NUMPLAYERS%==2 goto EXIT

start /affinity 3 eduke32-oldmp -cfg player3.cfg -nologo -noinstancechecking -nosetup -name Player3 -map %MAP% /net /n0 127.0.0.1 /p23123
if %NUMPLAYERS%==3 goto EXIT

start /affinity 4 eduke32-oldmp -cfg player4.cfg -nologo -noinstancechecking -nosetup -name Player4 -map %MAP% /net /n0 127.0.0.1 /p23124
if %NUMPLAYERS%==4 goto EXIT

start /affinity 1 eduke32-oldmp -cfg player5.cfg -nologo -noinstancechecking -nosetup -name Player5 -map %MAP% /net /n0 127.0.0.1 /p23125
if %NUMPLAYERS%==5 goto EXIT

start /affinity 2 eduke32-oldmp -cfg player6.cfg -nologo -noinstancechecking -nosetup -name Player6 -map %MAP% /net /n0 127.0.0.1 /p23126
if %NUMPLAYERS%==6 goto EXIT

start /affinity 3 eduke32-oldmp -cfg player7.cfg -nologo -noinstancechecking -nosetup -name Player7 -map %MAP% /net /n0 127.0.0.1 /p23127
if %NUMPLAYERS%==7 goto EXIT

start /affinity 4 eduke32-oldmp -cfg player8.cfg -nologo -noinstancechecking -nosetup -name Player8 -map %MAP% /net /n0 127.0.0.1 /p23128
if %NUMPLAYERS%==8 goto EXIT

start /affinity 1 eduke32-oldmp -cfg player9.cfg -nologo -noinstancechecking -nosetup -name Player9 -map %MAP% /net /n0 127.0.0.1 /p23128
if %NUMPLAYERS%==9 goto EXIT

:EXIT
exit