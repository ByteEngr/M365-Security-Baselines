Write-Host "Disabling insecure protocols..." -ForegroundColor Cyan

# Disable SMBv1
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force

# Disable TLS 1.0 & 1.1
New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server" -Force
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server" -Name Enabled -Value 0

New-Item -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server" -Force
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.1\Server" -Name Enabled -Value 0

Write-Host "Weak protocols disabled. Device hardened." -ForegroundColor Green
