@echo off
title 请求管理员权限中...
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
title 更改是否允许在登陆界面关机 1.1
for /f "tokens=3 delims= " %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v shutdownwithoutlogon') do (
if "%%a"=="0x0" (
echo 您现在处于拒绝在登陆界面关机的状态，是否恢复登陆界面关机按钮？&echo 如果你想继续，按任意键。。。&pause >nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v shutdownwithoutlogon /t REG_DWORD /d "1" /f
echo 已恢复登陆界面关机按钮！&echo.&echo 操作完成！谢谢使用！
) else (
for /f "tokens=2 delims=x" %%a in ("%%a") do (
echo 您现在处于允许在登陆界面关机的状态，是否取消登陆界面关机按钮？&echo 如果你想继续，按任意键。。。&pause >nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v shutdownwithoutlogon /t REG_DWORD /d "0" /f
echo 已取消登陆界面关机按钮！&echo.&echo 操作完成！谢谢使用！
)
)
)
pause >nul


