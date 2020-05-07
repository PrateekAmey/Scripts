sudo useradd -s /bin/bash -d /data/home/"$1" -m $1
sudo echo -e 'pass\npass\n' | sudo passwd $1
sudo usermod -aG sudo $1

