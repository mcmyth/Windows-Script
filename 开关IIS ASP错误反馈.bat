echo off
echo test >>C:\windows\system32\test.txt
cls
cd /d %windir%\system32\inetsrv\
if exist open.txt del open.txt
if exist C:\windows\system32\test.txt (echo ����ӵ�й���ԱȨ�ޡ�&del C:\windows\system32\test.txt&title ����IIS ASP������ [����Ա]&goto head&if exist open.txt del open.txt) else echo û�й���ԱȨ�ޣ����Թ���Ա������С�&title ����IIS ASP������ [δ��ù���ԱȨ��]&echo ��������˳�������&pause >nul&exit



:head
echo ����Tȷ�ϣ�������������Ϊ�رա�
set /p a="[�����Tȷ��]:" 
if /i "%a%"=="T" appcmd set config -section:asp -scriptErrorSentToBrowser:true&%windir%\system32\inetsrv\appcmd set config -section:asp -scriptErrorSentToBrowser:true&echo ��лʹ�ã��������ѿ�������������رա�&pause >nul&exit

appcmd set config -section:asp -scriptErrorSentToBrowser:false&%windir%\system32\inetsrv\appcmd set config -section:asp -scriptErrorSentToBrowser:false&echo ��лʹ�ã��������ѹرգ���������رա�&pause >nul&exit
