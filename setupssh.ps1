
Get-Service  -Name ssh-agent | Set-Service -StartupType Manual
mkdir ~\.ssh
cd ~\.ssh

Start-Service ssh-agent 

ssh-keygen -f id_rsa -t rsa -N  '""'
echo '\n' | plink dsvmadmin@host -pw "password" "mkdir ~/.ssh; chmod 700 ~/.ssh; touch ~/.ssh/authorized_keys; chmod 600 ~/.ssh/authorized_keys"
cat ~/.ssh/id_rsa.pub | plink dsvmadmin@host -pw password "cat >>  ~/.ssh/authorized_keys"   #Maybe worked"
