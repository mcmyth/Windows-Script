@echo off
for /f "tokens=3 delims= " %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v shutdownwithoutlogon') do (
if "%%a"=="0x0" (
echo 当前值等于 0
) else (
for /f "tokens=2 delims=x" %%a in ("%%a") do (
echo 当前值不等于 0，该值现为：%%a
)
)
)
pause


