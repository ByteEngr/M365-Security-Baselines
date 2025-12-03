Write-Host "Performing Zero Trust Assessment..." -ForegroundColor Cyan

$result = [PSCustomObject]@{
    MFAEnabled                  = (Get-MsolUser -All | Where-Object {$_.StrongAuthenticationMethods} ).Count
    LegacyAuthBlocked           = (Get-MgIdentityConditionalAccessPolicy | Where-Object {$_.Conditions.ClientAppTypes -contains "other"} ).Count
    CompliantDevices            = (Get-MgDeviceManagementManagedDevice | Where-Object {$_.complianceState -eq "compliant"}).Count
    AdminRolesWithMFA           = (Get-MgRoleManagementDirectoryRoleAssignmentScheduleInstance | Where-Object {$_.status -eq "Active"}).Count
}

$result | Format-List
$result | Export-Csv "./ZeroTrust/ZT-Assessment-Report.csv" -NoTypeInformation

Write-Host "Zero Trust assessment completed." -ForegroundColor Green
