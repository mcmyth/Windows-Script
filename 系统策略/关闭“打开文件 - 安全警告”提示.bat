@echo off
title 请求管理员权限中...
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 没有管理员权限！请使用管理员身份运行！&Pause >nul&exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
title 关闭“打开文件 - 安全警告”提示
Echo 本工具可以关闭“打开文件 - 安全警告”提示，如需后续添加信任的扩展名，请使用记事本打开此文件进行增加&Pause >nul

::----------在这里可以添加信任的扩展名--------------

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Associations /v ModRiskFileTypes /t REG_SZ /d .exe;.bat;.vbs;cmd;com;lnk /f 

::--------------------------------------------------
echo 接下来正在更新计算机策略和用户策略，请勿关闭！
gpupdate /force




echo 重启资源管理器...&taskkill /f /im explorer.exe >nul&start explorer.exe&echo 如果资源管理器没有运行请按Ctrl+Alt+Del键打开任务管理器新建任务，explorer.exe&echo 已完成，谢谢使用，按任意键退出。&pause >nul&exit
