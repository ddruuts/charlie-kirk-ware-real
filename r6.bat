    @echo off
net session >nul 2>&1
 
reg add HKLM\SYSTEM\CurrentControlSet\CI\Config /v "VulnerableDriverBlocklistEnable" /t REG_DWORD /d 0 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\CI\Config /v "VulnerableDriverBlocklistEnable" /t REG_DWORD /d 0 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity /v "Enabled" /t REG_DWORD /d 0 /f
 
echo.
echo Restart pc
pause