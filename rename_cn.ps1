$csv_data = Import-Csv -Path C:\ps\rename_users.csv -Delimiter ";"
$csv_data | % {Get-ADUser -Identity  $_.SamAccountName | Rename-ADObject -NewName $_.displayName}