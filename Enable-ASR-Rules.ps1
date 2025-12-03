<#
.SYNOPSIS
    Enables Microsoft Defender Attack Surface Reduction (ASR) rules
#>

$Rules = @(
    "D4F940AB-401B-4EfC-AADC-AD5F3C50688A", # Block all Office child processes
    "26190899-1602-49e8-8b27-eb1d0a1ce869", # Block credential stealing
    "3B576869-A4EC-4529-8536-B80A7769E899", # Block unsigned scripts
    "75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84"  # Block obfuscated scripts
)

foreach ($rule in $Rules) {
    Write-Host "Enabling ASR rule: $rule" -ForegroundColor Cyan
    Add-MpPreference -AttackSurfaceReductionRules_Ids $rule -AttackSurfaceReductionRules_Actions Enabled
}

Write-Host "ASR baseline applied successfully." -ForegroundColor Green
