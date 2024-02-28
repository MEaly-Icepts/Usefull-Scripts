#Variables
$Path = "C:\Folder_Path"
$DaysBack = "-XX"

#Date Calculations
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($DaysBack) 

#Script
Get-ChildItem $Path | Where-Object {$_.LastWriteTime -lt $DatetoDelete } | Remove-Item