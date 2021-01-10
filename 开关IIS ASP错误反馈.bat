echo off
echo test >>C:\windows\system32\test.txt
cls
cd /d %windir%\system32\inetsrv\
if exist open.txt del open.txt
if exist C:\windows\system32\test.txt (echo 您已拥有管理员权限。&del C:\windows\system32\test.txt&title 开关IIS ASP错误反馈 [管理员]&goto head&if exist open.txt del open.txt) else echo 没有管理员权限，请以管理员身份运行。&title 开关IIS ASP错误反馈 [未获得管理员权限]&echo 按任意键退出。。。&pause >nul&exit



:head
echo 输入T确认，输入其他内容为关闭。
set /p a="[请键入T确认]:" 
if /i "%a%"=="T" appcmd set config -section:asp -scriptErrorSentToBrowser:true&%windir%\system32\inetsrv\appcmd set config -section:asp -scriptErrorSentToBrowser:true&echo 感谢使用，错误反馈已开启，按任意键关闭。&pause >nul&exit

appcmd set config -section:asp -scriptErrorSentToBrowser:false&%windir%\system32\inetsrv\appcmd set config -section:asp -scriptErrorSentToBrowser:false&echo 感谢使用，错误反馈已关闭，按任意键关闭。&pause >nul&exit
