#!/usr/bin/env bash

# Install Node and Git
yum update -y

yum install git -y

git config --global user.name daniel.aboyewa

git config --global user.email info@lolubyte.com


# Make a development directory 

mkdir -p /home/ec2-user/development && cd /home/ec2-user/development

#git clone git clone https://github.com/lolubyte/ec2-lb-api.git  .

# Install Dependencies
#npm install
# Redirect Port 3000 to Port 80 Traffic
#iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 3000
# Start the server
#node . > stdout.log 2> stderr.log
