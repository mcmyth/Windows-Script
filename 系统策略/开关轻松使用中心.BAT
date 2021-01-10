@echo off
echo test >>C:\windows\system32\test.txt
cls
if exist C:\windows\system32\test.txt (echo 您已拥有管理员权限。&del C:\windows\system32\test.txt&title 开关轻松使用中心 [管理员]) else echo 没有管理员权限，可能无法正常读写文件。&title 开关轻松使用中心 [未获得管理员权限]&echo 请以管理员身份重新运行bat,按任意键退出。。。&pause >nul&exit

echo.
echo 嗨!欢迎使用!您可以在这里开关你的轻松使用中心(又名轻松访问中心),如有疑问可联系QQ:1440126177,谢谢支持!
echo.
if exist %SystemRoot%\system32\Utilman.exe (echo 你的轻松使用中心处于启用状态，是否要禁用？&echo 按任意键禁用...&pause >nul&ren "%SystemRoot%\system32\Utilman.exe" "Utilman_.exe") else (if exist %SystemRoot%\system32\Utilman_.exe (echo 你的轻松使用中心处于禁用状态，是否要启动它？&echo 按任意键启用..&pause >nul&ren "%SystemRoot%\system32\Utilman_.exe" "Utilman.exe") else (echo 抱歉！我们无法找到您的轻松使用的程序文件,文件应位于%SystemRoot%\system32\Utilman.exe))


echo.

if exist %SystemRoot%\system32\Utilman.exe (echo 你的轻松使用中心处于启用状态,如需禁用，请重新运行bat文件即可。) else (if exist %SystemRoot%\system32\Utilman_.exe (echo 你的轻松使用中心处于禁用状态,如需启用，请重新运行bat文件即可。) else (echo 抱歉！我们无法找到您的轻松使用的程序文件,文件应位于%SystemRoot%\system32\Utilman.exe或%SystemRoot%\system32\Utilman_.exe))


pause >nul






