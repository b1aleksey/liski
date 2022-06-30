# --------------------------------------------
# Script by Aleksey B.
#
#
# Version        Date           Info
# 1.0         30.06.2022    Initial Version
#
# --------------------------------------------

$csv_data = Import-Csv -Path C:\ps\rename_users.csv -Delimiter ";"
$csv_data | % {Get-ADUser -Identity  $_.SamAccountName | Rename-ADObject -NewName $_.displayName}
