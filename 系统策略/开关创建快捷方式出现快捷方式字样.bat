@echo off
:head
echo ��ӭʹ��
echo �����߿��Կ��ش�����ݷ�ʽ�Ƿ���ֿ�ݷ�ʽ����
echo.


set/p setreg="<����T������ʾ��F�ر���ʾ>:"

if /i %setreg% == F echo ���Ժ�...&reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "link" /d 00000000 /t REG_binary /f >nul&echo ������Դ������...&taskkill /f /im explorer.exe >nul&start explorer.exe&echo ллʹ�ã���������˳���&pause >nul&exit

if /i %setreg% == T echo ���Ժ�...&reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "link" /d 00160000 /t REG_binary /f >nul&echo  ������Դ������...&taskkill /f /im explorer.exe >nul&start explorer.exe&echo ллʹ�ã���������˳���&pause >nul&exit


echo ������Ĳ����������������룡����T������ʾ��F�ر���ʾ��

pause >nul&cls&goto head