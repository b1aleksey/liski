# --------------------------------------------
# Script by Aleksey B.
#
#
# Version        Date           Info
# 1.0         30.06.2022    Initial Version
#
# --------------------------------------------

$csv_data = Import-Csv -Path C:\ps\rename_users.csv -Delimiter ";"
$csv_data | % {Set-ADUser -Identity $_.SamAccountName -City $_.City -Company $_.Company -Country $_.Country -Department $_.Department -Description $_.Description -displayName $_.displayName -givenName $_.givenName -Initials $_.Initials -SurName $_.SurName -Title $_.Title}
