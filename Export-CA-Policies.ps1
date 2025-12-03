Import-Module Microsoft.Graph.Identity.SignIns
. .\..\Connect-Graph.ps1

Write-Host "Exporting Conditional Access policies..." -ForegroundColor Cyan

$policies = Get-MgIdentityConditionalAccessPolicy
$output = "./ConditionalAccess/Exports"

New-Item -ItemType Directory -Force -Path $output | Out-Null

foreach ($policy in $policies) {
    $file = "$output/$($policy.DisplayName).json"
    $policy | ConvertTo-Json -Depth 10 | Out-File $file
    Write-Host "Exported $file" -ForegroundColor Green
}
