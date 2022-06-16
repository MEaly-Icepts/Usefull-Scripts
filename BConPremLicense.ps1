#
$ServerInstance = Read-Host -Prompt "Enter Server Instance"
#
Export-NAVServerlicenseInformation -ServerInstance $ServerInstance