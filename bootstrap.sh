#!/usr/bin/env bash
# This script will update and install Shiny

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password dbpass'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password dbpass'
sudo apt-get -y install git gcc
sudo apt-get -y install libxml2-dev libcurl4-openssl-dev libssl0.9.8 libcairo2-dev libv8-dev
sudo apt-get install -y mysql-server libmysqlclient-dev
sudo add-apt-repository ppa:marutter/rrutter
sudo apt-get update
sudo apt-get -y install r-base r-base-dev
sudo R -e "install.packages('shiny', repos = 'http://cran.rstudio.com/', dep = TRUE)"
sudo R -e "install.packages('rmarkdown', repos = 'http://cran.rstudio.com/', dep = TRUE)"
sudo R -e "install.packages('shinyjs', repos = 'http://cran.rstudio.com/', dep = TRUE)"
sudo R -e "install.packages('RMySQL', repos = 'http://cran.rstudio.com/', dep = TRUE)"
sudo apt-get -y install gdebi-core
wget https://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.4.0.718-amd64.deb
sudo gdebi shiny-server-1.4.0.718-amd64.deb

sudo dpkg -i *.deb
rm *.deb

#  Set the applicaiton directory to point to the vagrant share.
sudo ln -sf /vagrant/apps /srv/shiny-server
sudo ln -sf /vagrant/log/shiny-server.log /var/log/shiny-server.log
