Get-Command -Module  Microsoft.PowerShell.LocalAccounts
$Password = Read-Host -AsSecureString -Prompt 'Input Password'
$Username = Read-Host -Prompt 'Input Username' 
$Fullname = Read-Host -Prompt 'Input Users Full Name'$Description = Read-Host -Prompt 'Enter the description the user belongs to (Amey Team/HE Analyst/BJSS/Other 3rd Party)'
$UserGroup = Read-Host -Prompt 'Enter the user group this account belongs to (Analysts/Administrators)'
New-LocalUser $Username -Description $Description -NoPassword
Set-LocalUser -Name $Username -Fullname $Fullname
Add-LocalGroupMember -Group $UserGroup -Member $Username
