@echo off
title �������ԱȨ����...
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
title �����Ƿ������ڵ�½����ػ� 1.1
for /f "tokens=3 delims= " %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v shutdownwithoutlogon') do (
if "%%a"=="0x0" (
echo �����ڴ��ھܾ��ڵ�½����ػ���״̬���Ƿ�ָ���½����ػ���ť��&echo �������������������������&pause >nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v shutdownwithoutlogon /t REG_DWORD /d "1" /f
echo �ѻָ���½����ػ���ť��&echo.&echo ������ɣ�ллʹ�ã�
) else (
for /f "tokens=2 delims=x" %%a in ("%%a") do (
echo �����ڴ��������ڵ�½����ػ���״̬���Ƿ�ȡ����½����ػ���ť��&echo �������������������������&pause >nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v shutdownwithoutlogon /t REG_DWORD /d "0" /f
echo ��ȡ����½����ػ���ť��&echo.&echo ������ɣ�ллʹ�ã�
)
)
)
pause >nul


