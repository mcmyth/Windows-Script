@echo off
title �鿴�˿�ռ��
echo ��������Ҫ�鿴�˿�ռ�õĶ˿ںţ�����allΪ��ʾ���ж˿�ռ�á�
:a
echo.
set /p port="[������˿�]===>"

if %port%==all (netstat -ano &goto a) else (netstat -ano|findstr %port% && goto a)





goto a