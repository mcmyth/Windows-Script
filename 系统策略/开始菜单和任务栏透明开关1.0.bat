@echo off
title �������ԱȨ����...
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
title ��ʼ�˵���������͸������1.0
for /f "tokens=3 delims= " %%a in ('reg query "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency') do (
if "%%a"=="0x0" (
echo �����ڵĿ�ʼ�˵����ڲ�͸��״̬���Ƿ�ָ���ʼ�˵���������͸����&echo �������������������������&pause >nul
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d "1" /f
echo ������Դ������..�����Դ������û�б��������������������½�����explorer��
taskkill /f /im explorer.exe >nul&start explorer.exe
echo �ѻָ���½��ʼ�˵���������͸����&echo.&echo ������ɣ�ллʹ�ã�
) else (
for /f "tokens=2 delims=x" %%a in ("%%a") do (
echo �����ڵĿ�ʼ�˵�����͸��״̬���Ƿ�ȡ����ʼ�˵���������͸����&echo �������������������������&pause >nul
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d "0" /f
echo ������Դ������..�����Դ������û�б��������������������½�����explorer��
taskkill /f /im explorer.exe >nul&start explorer.exe
echo ��ȡ����ʼ�˵���������͸����&echo.&echo ������ɣ�ллʹ�ã�
)
)
)
pause >nul


