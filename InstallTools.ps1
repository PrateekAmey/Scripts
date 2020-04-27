# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Software
choco install visualstudiocode -y
choco install X2Go -y 
choco install Putty -y

#Create accounts
Get-Command -Module  Microsoft.PowerShell.LocalAccounts
$Password = "Test123"
$Username = "Testuser1"
$Fullname = "Test User" 
$Description = "Test User"
$UserGroup = "Users"
New-LocalUser $Username -Description $Description -NoPassword
Set-LocalUser -Name $Username -Fullname $Fullname
Add-LocalGroupMember -Group $UserGroup -Member $Username
