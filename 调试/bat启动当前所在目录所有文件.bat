@echo off
for %%i in (%0) do (set "name=%%~ni") 
for %%i in (*) do if not %%i == %name%.bat (start %%i&&echo ������ %%i) else (echo �Թ����������ļ���Ϊ %name%.bat)
pause
