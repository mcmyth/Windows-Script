@echo off
title �Ҽ��˵��ϼ�
echo ���ܽ���:
echo �����߿������һЩ�Ҽ��˵������а����ü��±��򿪣���winrar�򿪣�����Աȡ������Ȩ�������᲻�ϵ�����
echo.
echo By:MCshenhua
echo.
echo ������������������������������棬��������뽫�Ҽ��˵�ɾ����������ֶ�ɾ��ע������ʹ�õ��������ɾ����
pause >nul
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У����û�й���ԱȨ�ޣ����������ܻ᲻�ϵ��������ԱȨ�ޣ��������������밴�������&&Pause >nul)
Rd "%WinDir%\System32\test_permissions" 2>NUL


> "%Temp%\~import.reg" ECHO Windows Registry Editor Version 5.00
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\*\shell\notepad_open]
>> "%Temp%\~import.reg" ECHO @="�ü��±���(&Z)"
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\*\shell\notepad_open\command]
>> "%Temp%\~import.reg" ECHO @="notepad.exe %%1"
START /WAIT REGEDIT /S "%Temp%\~import.reg"
DEL "%Temp%\~import.reg"
> "%Temp%\~import.reg" ECHO Windows Registry Editor Version 5.00
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\*\shell\WINRAR]
>> "%Temp%\~import.reg" ECHO @="��WinRAR��"
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\*\shell\WINRAR\command]
>> "%Temp%\~import.reg" ECHO @="WinRAR.exe \"%%1\""
START /WAIT REGEDIT /S "%Temp%\~import.reg"
DEL "%Temp%\~import.reg"
> "%Temp%\~import.reg" ECHO Windows Registry Editor Version 5.00
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\*\shell\runas]
>> "%Temp%\~import.reg" ECHO @="����Աȡ������Ȩ"
>> "%Temp%\~import.reg" ECHO "NoWorkingDirectory"=""
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\*\shell\runas\command]
>> "%Temp%\~import.reg" ECHO @="cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F"
>> "%Temp%\~import.reg" ECHO "IsolatedCommand"="cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F"
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\exefile\shell\runas2]
>> "%Temp%\~import.reg" ECHO @="����Աȡ������Ȩ"
>> "%Temp%\~import.reg" ECHO "NoWorkingDirectory"=""
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\exefile\shell\runas2\command]
>> "%Temp%\~import.reg" ECHO @="cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F"
>> "%Temp%\~import.reg" ECHO "IsolatedCommand"="cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F"
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\Directory\shell\runas]
>> "%Temp%\~import.reg" ECHO @="����Աȡ������Ȩ"
>> "%Temp%\~import.reg" ECHO "NoWorkingDirectory"=""
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\Directory\shell\runas\command]
>> "%Temp%\~import.reg" ECHO @="cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t"
>> "%Temp%\~import.reg" ECHO "IsolatedCommand"="cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t"
START /WAIT REGEDIT /S "%Temp%\~import.reg"
DEL "%Temp%\~import.reg"
echo �������,��������˳�...
pause>nul
