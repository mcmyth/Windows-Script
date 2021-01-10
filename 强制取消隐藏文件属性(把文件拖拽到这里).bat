@echo off
title 强制取消文件隐藏属性
if "%~n1" NEQ "" (attrib "%~n1%~x1"  -s -h /s /d&&echo 已将%~n1%~x1取消隐藏) else echo 请把文件直接拖拽到批处理的图标！
echo.
echo 按任意键退出...&&pause >nul