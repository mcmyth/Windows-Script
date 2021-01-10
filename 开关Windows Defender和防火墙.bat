@echo off
title 开关Windows Defender和防火墙
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL

:head
echo 欢迎使用
echo 本工具可以开关Windows Defender和防火墙
echo.


set/p setreg="<输入T开启，F关闭>:"

if /i %setreg% == F echo 请稍后...&reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 1 /t REG_DWORD /f >nul&echo 请稍后...&netsh firewall set opmode mode=disable profile=all&echo 正在执行下一步操作，请稍后...&netsh firewall set opmode mode=disable&echo 谢谢使用，按任意键退出。&pause >nul&exit

if /i %setreg% == T echo 请稍后...&reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 0 /t REG_DWORD /f >nul&echo 请稍后...&netsh firewall set opmode mode=enable profile=all&echo 正在执行下一步操作，请稍后...&netsh firewall set opmode mode=enable&echo 谢谢使用，按任意键退出。&pause >nul&exit


echo 您输入的参数有误，请重新输入！输入T开启，F关闭。

pause >nul&cls&goto head