@echo off
title  MKlink
:start
set Choice1=
set Choice2=
echo ����Ŀ¼�󰴻س�ȷ��
echo ��Ҫ�������ӵ�Ŀ¼:
set /p Choice1=
echo ԴĿ¼:
set /p Choice2=
echo.
echo [Warning]�˲�������� '%Choice1%' ɾ�������ӵ� '%Choice2%'��
set /p a="[���س�ȷ��]"
if ""%Choice1%"" == "" goto start
rd/s/q \\?\""%Choice1%""
MKLINK /j ""%Choice1%"" ""%Choice2%""
echo.
cls
echo �������!
echo.

goto :start