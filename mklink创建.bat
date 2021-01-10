@echo off
title  MKlink
:start
set Choice1=
set Choice2=
echo 拖入目录后按回车确认
echo 将要创建链接的目录:
set /p Choice1=
echo 源目录:
set /p Choice2=
echo.
echo [Warning]此操作将会把 '%Choice1%' 删除并链接到 '%Choice2%'。
set /p a="[按回车确认]"
if ""%Choice1%"" == "" goto start
rd/s/q \\?\""%Choice1%""
MKLINK /j ""%Choice1%"" ""%Choice2%""
echo.
cls
echo 建立完成!
echo.

goto :start