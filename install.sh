#!/bin/bash

echo "Installing packages"

sudo apt install apt-transport-http software-properties-commons
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh git wget firefox
pip3 install -r ./requirements.txt

cp ./bin/{configure.sh,Creatify-GithubCLI.sh,Creatify-WebScraping.sh,creatify,webtemplate.sh,create.py} ~/.creatify/

echo export PATH=$PATH:~/.creatify >> ~/.bashrc
chmod u+x "~/.creatify/creatify"

echo "Please restart the terminal to start using Creatify.."
