#!/usr/bin/env bash

#Patch new instance 
yum update -y

#Install Apache
yum install httpd -y
systemctl enable httpd
systemctl start httpd

# Install Git and configure git 
yum install git -y

# Make a development directory

mkdir -p /home/ec2-user/development && cd /home/ec2-user/development

git init 

git config --global user.name daniel.aboyewa

git config --global user.email info@lolubyte.com

git clone https://github.com/lolubyte-da/sso3-develoment.git .

cd /home/ec2-user/development/sso3-develoment && unzip business-2.zip

cp -r  /home/ec2-user/development/sso3-develoment/business-2/* /var/www/html/

systemctl restart httpd


# Install Dependencies
#npm install
# Redirect Port 3000 to Port 80 Traffic
#iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 3000
# Start the server
#node . > stdout.log 2> stderr.log
