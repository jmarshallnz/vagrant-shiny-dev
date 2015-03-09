#!/usr/bin/env bash
# This script will update and install Shiny

sudo apt-get update
sudo apt-get -y install git gcc
sudo apt-get -y install libxml2-dev libcurl4-openssl-dev libssl0.9.8 libcairo2-dev
sudo add-apt-repository ppa:marutter/rrutter
sudo apt-get update
sudo apt-get -y install r-base r-base-dev
sudo R -e "install.packages('shiny', repos = 'http://cran.rstudio.com/', dep = TRUE)"
sudo R -e "install.packages('rmarkdown', repos = 'http://cran.rstudio.com/', dep = TRUE)"
sudo apt-get -y install gdebi-core
wget http://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.3.0.403-amd64.deb
shiny-server-1.3.0.403-amd64.deb
sudo dpkg -i *.deb
rm *.deb

#  Set the applicaiton directory to point to the vagrant share. 
sudo ln -s /vagrant/apps /srv/shiny-server
