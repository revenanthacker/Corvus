#!/bin/bash
# Update Parrot with tweaks and apps

#Make sure everything is up to date and pristine
sudo apt-get update

#Install
sudo apt-get install atom

#Create an Engagement Folder
sudo mkdir /usr/Engagement

#Hopefully change the background
#gsettings set org.gnome.desktop.background picture-uri "file://Corvus.jpg"

gsettings set org.gnome.desktop.background picture-uri "File:/Corvus.jpg"

#LAST RUN
#Assign existing hostname to $hostn
hostn=$(cat /etc/hostname)

#Display existing hostname
echo "Existing hostname is $hostn"

#Ask for new hostname $newhost
echo "Enter new hostname: "
read newhost

#change hostname in /etc/hosts & /etc/hostname
sudo sed -i "s/$hostn/$newhost/g" /etc/hosts
sudo sed -i "s/$hostn/$newhost/g" /etc/hostname

#display new hostname
echo "Your new hostname is $newhost"

#Press a key to reboot
echo "All tasks completed"
read -s -n 1 -p "Press any key to reboot"
sudo reboot
