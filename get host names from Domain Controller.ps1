
#from a domain controller
Import-Module ActiveDirectory

#get host name list
Write-Output "Here is a list of full DNS names:"
Get-ADComputer -Filter 'ObjectClass -eq "Computer"' | Select -Expand DNSHostName

#get the name list (simple names)
Write-Output "`n`nHere is a list of simple names:"
Get-ADComputer -Filter * | Select -Expand Name
