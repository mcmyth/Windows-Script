@echo off
title 查看端口占用
echo 请输入你要查看端口占用的端口号，输入all为显示所有端口占用。
:a
echo.
set /p port="[请输入端口]===>"

if %port%==all (netstat -ano &goto a) else (netstat -ano|findstr %port% && goto a)





goto a