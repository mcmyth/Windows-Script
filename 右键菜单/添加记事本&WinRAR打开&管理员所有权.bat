@echo off
title 右键菜单合集
echo 功能介绍:
echo 本工具可以添加一些右键菜单，其中包括用记事本打开，用winrar打开，管理员取得所有权，后续会不断的增加
echo.
echo By:MCshenhua
echo.
echo 按任意键继续操作，本操作将不可逆，如果后续想将右键菜单删除，你可以手动删除注册表或者使用第三方软件删除。
pause >nul
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！如果没有管理员权限，接下来可能会不断的请求管理员权限，如果你想继续，请按任意键。&&Pause >nul)
Rd "%WinDir%\System32\test_permissions" 2>NUL


> "%Temp%\~import.reg" ECHO Windows Registry Editor Version 5.00
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\*\shell\notepad_open]
>> "%Temp%\~import.reg" ECHO @="用记事本打开(&Z)"
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\*\shell\notepad_open\command]
>> "%Temp%\~import.reg" ECHO @="notepad.exe %%1"
START /WAIT REGEDIT /S "%Temp%\~import.reg"
DEL "%Temp%\~import.reg"
> "%Temp%\~import.reg" ECHO Windows Registry Editor Version 5.00
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\*\shell\WINRAR]
>> "%Temp%\~import.reg" ECHO @="用WinRAR打开"
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\*\shell\WINRAR\command]
>> "%Temp%\~import.reg" ECHO @="WinRAR.exe \"%%1\""
START /WAIT REGEDIT /S "%Temp%\~import.reg"
DEL "%Temp%\~import.reg"
> "%Temp%\~import.reg" ECHO Windows Registry Editor Version 5.00
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\*\shell\runas]
>> "%Temp%\~import.reg" ECHO @="管理员取得所有权"
>> "%Temp%\~import.reg" ECHO "NoWorkingDirectory"=""
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\*\shell\runas\command]
>> "%Temp%\~import.reg" ECHO @="cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F"
>> "%Temp%\~import.reg" ECHO "IsolatedCommand"="cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F"
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\exefile\shell\runas2]
>> "%Temp%\~import.reg" ECHO @="管理员取得所有权"
>> "%Temp%\~import.reg" ECHO "NoWorkingDirectory"=""
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\exefile\shell\runas2\command]
>> "%Temp%\~import.reg" ECHO @="cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F"
>> "%Temp%\~import.reg" ECHO "IsolatedCommand"="cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F"
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\Directory\shell\runas]
>> "%Temp%\~import.reg" ECHO @="管理员取得所有权"
>> "%Temp%\~import.reg" ECHO "NoWorkingDirectory"=""
>> "%Temp%\~import.reg" ECHO.
>> "%Temp%\~import.reg" ECHO [HKEY_CLASSES_ROOT\Directory\shell\runas\command]
>> "%Temp%\~import.reg" ECHO @="cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t"
>> "%Temp%\~import.reg" ECHO "IsolatedCommand"="cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t"
START /WAIT REGEDIT /S "%Temp%\~import.reg"
DEL "%Temp%\~import.reg"
echo 操作完成,按任意键退出...
pause>nul
