<#!
.SYNOPSIS
    Basic script to edit when I need to run remote commands
.DESCRIPTION
    Not a ful lscript but just a wrapper for use with other commands
.NOTES
    Auther: Mathew Ealy
#>

#Export Computers form OU into csv file - If you have a list of select computers you can comment out this part
Import-Module -Name ActiveDirectory
$OUpath = 'ou=Managers,dc=enterprise,dc=com'
$FilePath = 'c:\data\computers_in_ou.csv'
Get-ADComputer -Filter * -SearchBase $OUpath | Select-object
Name | Export-Csv -NoType $FilePath
#Load File 
$Computers = Import-CSV -path $FilePath

#Run script
foreach ($Computer in $Computers)
{
Invoke-Command -ComputerName $Computer -ScriptBlock
    {
    #Powershell command to run
    }

}