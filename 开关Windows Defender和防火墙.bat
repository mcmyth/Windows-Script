@echo off
title ����Windows Defender�ͷ���ǽ
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL

:head
echo ��ӭʹ��
echo �����߿��Կ���Windows Defender�ͷ���ǽ
echo.


set/p setreg="<����T������F�ر�>:"

if /i %setreg% == F echo ���Ժ�...&reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 1 /t REG_DWORD /f >nul&echo ���Ժ�...&netsh firewall set opmode mode=disable profile=all&echo ����ִ����һ�����������Ժ�...&netsh firewall set opmode mode=disable&echo ллʹ�ã���������˳���&pause >nul&exit

if /i %setreg% == T echo ���Ժ�...&reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 0 /t REG_DWORD /f >nul&echo ���Ժ�...&netsh firewall set opmode mode=enable profile=all&echo ����ִ����һ�����������Ժ�...&netsh firewall set opmode mode=enable&echo ллʹ�ã���������˳���&pause >nul&exit


echo ������Ĳ����������������룡����T������F�رա�

pause >nul&cls&goto head