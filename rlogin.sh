#!/bin/bash 
# Rlogin enable 
echo "##########################"
echo "Welcome To SKTechnologies"
echo "##########################"

#System update 
#yum update -y 
#sleep 3 

#Install the git 
#yum install git -y 
 
# Rlogin Enable 
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/'  /etc/ssh/sshd_config

#Restart the sshd service 
systemctl restart sshd 

#Reset the user password
user=ec2-user
password=sktech123

#passwd $user 
echo $password |passwd $user --stdin

echo "Password has been successfully changed"

echo "##############################"
echo "Succesfully Enabled the RLogin"
echo "##############################"

