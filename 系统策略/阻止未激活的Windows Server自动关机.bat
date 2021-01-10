@echo off
taskkill /f /im wlms.exe
echo pls wait...
ping -n  4 127.0.0.1>nul
shutdown -a