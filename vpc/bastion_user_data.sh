#!/bin/bash
# This script configures and enables a fresh bastion server

# setup logging and begin
set -e -u -o pipefail
NOW=$(date +"%FT%T")
echo "[$NOW]  Beginning user_data script."

sudo su

# update packages and install tools
apt-get -y update
apt-get upgrade -y
apt install -y jq awscli unzip
apt install -y python3-pip
apt install -y git
pip3 install awscli --upgrade
apt-get install -y build-essential ca-certificates openssl libssl-dev stunnel

# end script
NOW=$(date +"%FT%T")
echo "[$NOW]  Finished user_data script."

# reboot now
