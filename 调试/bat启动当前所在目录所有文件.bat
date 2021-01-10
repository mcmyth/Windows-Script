@echo off
for %%i in (%0) do (set "name=%%~ni") 
for %%i in (*) do if not %%i == %name%.bat (start %%i&&echo 已启动 %%i) else (echo 略过启动自身，文件名为 %name%.bat)
pause
