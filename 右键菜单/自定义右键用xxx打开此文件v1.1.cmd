@echo off
title �Զ����Ҽ���xxx�򿪴��ļ�v1.0
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL

echo �Զ����Ҽ���xxx�򿪴��ļ���
echo ָ�/del(����ɾ��ģʽ)��/exti(�˳�ɾ��ģʽ)��/back(������һ��)
echo ��������ֶ�ɾ�����޸�ע������ֶ�����HKEY_CLASSES_ROOT\*\shell���в�����
echo.
:reg
set /p reg="������ע����Ӣ����(�벻Ҫ�������ַ����߿ո�б��)��"
if "%reg%"=="/del" echo �ѽ���ɾ��ģʽ&&goto del
:menu
set /p menu="�������Ҽ��˵������ƣ�"
if "%menu%"=="/del" echo �ѽ���ɾ��ģʽ&&goto del
if "%menu%"=="/back" echo �ѷ�����һ��&&goto reg
:file
set /p file="���������·����"
if "%file%"=="/del" echo �ѽ���ɾ��ģʽ&&goto del
if "%file%"=="/back" echo �ѷ�����һ��&&goto menu
echo.
if "%reg%"=="" echo ������ע����Ӣ������&&goto reg
if "%menu%"=="" echo �������Ҽ��˵������ƣ�&&goto menu
if "%file%"=="" echo ���������·����&&goto file

reg add "HKCR\*\shell\%reg%" /f /ve /t REG_SZ /d "%menu%"
reg add "HKCR\*\shell\%reg%\command" /f /ve /t REG_SZ /d "%file% \"%%1\""
echo ������ɣ���������˳�...&&pause>nul&&exit

:del
set /p del_reg="��������Ҫɾ����ע����Ӣ������"
if "%del_reg%"=="" echo ��������Ҫɾ����ע����Ӣ������&&goto del
if "%del_reg%"=="/exit" echo ���˳�ɾ��ģʽ&&goto reg

pause
reg delete "HKCR\*\shell\%del_reg%" /f
echo ������ɣ������˳�ɾ��ģʽ��������/exit
goto del