#!/bin/sh

#creating runnable script on linux
chmod +x ubuntu_program_installation_script.sh

#visual studio code extensions script
chmod +x visual_studio_code_extensions.sh

#atom extensions script
chmod +x atom_extenstions.sh

#./<name of running script> <your ubuntu password> <GIT_NAME> <GIT_EMAIL>
#sudo apt update <your ubuntu password>
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | echo rus591342 | sudo -S sudo debconf-set-selections 
echo rus591342 | sudo -S sudo apt-get install ttf-mscorefonts-installer
#echo ct,h kvmkhj | sudo -S sudo apt update -y
./ubuntu_program_installation_script.sh rus591342 "ruslan.gorbaty" "ruslan105@gmail.com"
./visual_studio_code_extensions.sh
./atom_extenstions.sh
