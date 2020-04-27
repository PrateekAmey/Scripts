sudo useradd -s /bin/bash -d /data/home/$1 -m $1
sudo echo -e 'testing123\ntesting123\n' | sudo passwd $1
