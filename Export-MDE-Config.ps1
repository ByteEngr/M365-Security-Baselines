Write-Host "Exporting Microsoft Defender configuration..." -ForegroundColor Cyan

$config = Get-MpPreference
$config | ConvertTo-Json -Depth 5 | Out-File "./Defender/MDE-Config-Export.json"

Write-Host "Configuration exported to Defender/MDE-Config-Export.json" -ForegroundColor Green
