@echo off
title 自定义右键用xxx打开此文件v1.0
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL

echo 自定义右键用xxx打开此文件。
echo 指令：/del(进入删除模式)、/exti(退出删除模式)、/back(返回上一层)
echo 如果你想手动删除或修改注册项，请手动进入HKEY_CLASSES_ROOT\*\shell自行操作。
echo.
:reg
set /p reg="请输入注册项英文名(请不要有特殊字符或者空格、斜杠)："
if "%reg%"=="/del" echo 已进入删除模式&&goto del
:menu
set /p menu="请输入右键菜单的名称："
if "%menu%"=="/del" echo 已进入删除模式&&goto del
if "%menu%"=="/back" echo 已返回上一层&&goto reg
:file
set /p file="请输入程序路径："
if "%file%"=="/del" echo 已进入删除模式&&goto del
if "%file%"=="/back" echo 已返回上一层&&goto menu
echo.
if "%reg%"=="" echo 请输入注册项英文名！&&goto reg
if "%menu%"=="" echo 请输入右键菜单的名称！&&goto menu
if "%file%"=="" echo 请输入程序路径！&&goto file

reg add "HKCR\*\shell\%reg%" /f /ve /t REG_SZ /d "%menu%"
reg add "HKCR\*\shell\%reg%\command" /f /ve /t REG_SZ /d "%file% \"%%1\""
echo 操作完成，按任意键退出...&&pause>nul&&exit

:del
set /p del_reg="请输入需要删除的注册项英文名："
if "%del_reg%"=="" echo 请输入需要删除的注册项英文名！&&goto del
if "%del_reg%"=="/exit" echo 已退出删除模式&&goto reg

pause
reg delete "HKCR\*\shell\%del_reg%" /f
echo 操作完成，如需退出删除模式，请输入/exit
goto del