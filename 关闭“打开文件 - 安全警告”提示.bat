@echo off
title �������ԱȨ����...
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo û�й���ԱȨ�ޣ���ʹ�ù���Ա������У�&Pause >nul&exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
title �رա����ļ� - ��ȫ���桱��ʾ
Echo �����߿��Թرա����ļ� - ��ȫ���桱��ʾ���������������ε���չ������ʹ�ü��±��򿪴��ļ���������&Pause >nul

::----------���������������ε���չ��--------------

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Associations /v ModRiskFileTypes /t REG_SZ /d .exe;.bat;.vbs;cmd;com;lnk /f 

::--------------------------------------------------
echo ���������ڸ��¼�������Ժ��û����ԣ�����رգ�
gpupdate /force




echo ������Դ������...&taskkill /f /im explorer.exe >nul&start explorer.exe&echo �����Դ������û�������밴Ctrl+Alt+Del��������������½�����explorer.exe&echo ����ɣ�ллʹ�ã���������˳���&pause >nul&exit
