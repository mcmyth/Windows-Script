@echo off
for /f "tokens=3 delims= " %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v shutdownwithoutlogon') do (
if "%%a"=="0x0" (
echo ��ǰֵ���� 0
) else (
for /f "tokens=2 delims=x" %%a in ("%%a") do (
echo ��ǰֵ������ 0����ֵ��Ϊ��%%a
)
)
)
pause


