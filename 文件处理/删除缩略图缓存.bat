rem 关闭explorer.exe

taskkill /f /im explorer.exe

attrib -h -i %userprofile%\AppData\Local\IconCache.db

del %userprofile%\AppData\Local\IconCache.db /a

rem 打开explorer

start explorer
pause