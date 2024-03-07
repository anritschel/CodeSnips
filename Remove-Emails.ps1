Connect-ExchangeOnline
Connect-Ippssession

$searchName = ""
$query = '(Subject: '') AND (Sender: '')'
$Search = New-ComplianceSearch -Name $searchName -ExchangeLocation All -ContentMatchQuery $query
Start-ComplianceSearch -Identity $Search.Identity

#Wait for compliance search to complete, uset get-compliancesearch -identity $Search.Identity to check status

New-ComplianceSearchAction -SearchName $searchName -Purge -PurgeType HardDelete
