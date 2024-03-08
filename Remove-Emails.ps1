Connect-ExchangeOnline
Connect-Ippssession

$searchName = ""
$query = "(Subject: '') AND (Sender: '') AND (Received: 1/1/2001..1/1/2024)"
$Search = New-ComplianceSearch -Name $searchName -ExchangeLocation All -ContentMatchQuery $query
Start-ComplianceSearch -Identity $Search.Identity

#Wait for compliance search to complete, uset get-compliancesearch $Search.Name to check status

New-ComplianceSearchAction -SearchName $searchName -Purge -PurgeType HardDelete
