@echo off
title 请求管理员权限中...
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
title 开始菜单和任务栏透明开关1.0
for /f "tokens=3 delims= " %%a in ('reg query "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency') do (
if "%%a"=="0x0" (
echo 您现在的开始菜单处于不透明状态，是否恢复开始菜单和任务栏透明？&echo 如果你想继续，按任意键。。。&pause >nul
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d "1" /f
echo 重启资源管理器..如果资源管理器没有被重启，请打开任务管理器新建任务explorer。
taskkill /f /im explorer.exe >nul&start explorer.exe
echo 已恢复登陆开始菜单和任务栏透明！&echo.&echo 操作完成！谢谢使用！
) else (
for /f "tokens=2 delims=x" %%a in ("%%a") do (
echo 您现在的开始菜单处于透明状态，是否取消开始菜单和任务栏透明？&echo 如果你想继续，按任意键。。。&pause >nul
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d "0" /f
echo 重启资源管理器..如果资源管理器没有被重启，请打开任务管理器新建任务explorer。
taskkill /f /im explorer.exe >nul&start explorer.exe
echo 已取消开始菜单和任务栏透明！&echo.&echo 操作完成！谢谢使用！
)
)
)
pause >nul


