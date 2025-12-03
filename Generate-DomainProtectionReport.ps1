param(
    [Parameter(Mandatory)]
    [string]$Domain
)

Write-Host "Checking email security for $Domain..." -ForegroundColor Cyan

$spf = (Resolve-DnsName -Name $Domain -Type TXT | Where-Object {$_.Strings -like "v=spf*"}).Strings
$dkim = Resolve-DnsName -Name "selector1._domainkey.$Domain" -Type TXT -ErrorAction SilentlyContinue
$dmarc = Resolve-DnsName -Name "_dmarc.$Domain" -Type TXT -ErrorAction SilentlyContinue

$report = [PSCustomObject]@{
    Domain = $Domain
    SPF    = $spf
    DKIM   = if ($dkim) { "Enabled" } else { "Not Found" }
    DMARC  = if ($dmarc) { $dmarc.Strings } else { "Not Configured" }
}

$report | Format-List
$report | Export-Csv "./EmailSecurity/Domain-Security-Report.csv" -NoTypeInformation

Write-Host "Email security report created." -ForegroundColor Green
