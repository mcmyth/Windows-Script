@echo off
:head
echo 欢迎使用
echo 本工具可以开关创建快捷方式是否出现快捷方式字样
echo.


set/p setreg="<输入T开启显示，F关闭显示>:"

if /i %setreg% == F echo 请稍后...&reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "link" /d 00000000 /t REG_binary /f >nul&echo 重启资源管理器...&taskkill /f /im explorer.exe >nul&start explorer.exe&echo 谢谢使用，按任意键退出。&pause >nul&exit

if /i %setreg% == T echo 请稍后...&reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "link" /d 00160000 /t REG_binary /f >nul&echo  重启资源管理器...&taskkill /f /im explorer.exe >nul&start explorer.exe&echo 谢谢使用，按任意键退出。&pause >nul&exit


echo 您输入的参数有误，请重新输入！输入T开启显示，F关闭显示。

pause >nul&cls&goto head