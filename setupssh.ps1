# Install the OpenSSHUtils module to the server. This will be valuable when deploying user keys.
Install-Module -Force OpenSSHUtils -Scope AllUsers

Get-Service  -Name ssh-agent | Set-Servuce -StartupType Manual
Start-Service ssh-agent 

cd ~\.ssh\
ssh-keygen
