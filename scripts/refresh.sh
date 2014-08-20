#!/usr/bin/env /bin/bash

GIT=`which git`

## Install web pages:
echo "Copying web pages into place.."
sudo cp -r -u /vagrant/system/web/* /var/www/html



## Check out all required repos:
# hmt-archive
if [ -d "/vagrant/repositories/hmt-archive" ]; then
    echo "Checking for updates to hmt-archive"
    cd /vagrant/repositories/hmt-archive
    $GIT pull
else
    echo "Installing hmt-archive"
    cd /vagrant/repositories
    echo  Running  $GIT clone https://github.com/homermultitext/hmt-archive.git
    $GIT clone https://github.com/homermultitext/hmt-archive.git
fi



# cite manager
if [ -d "/vagrant/repositories/citemgr" ]; then
    echo "Checking for updates to citemgr"
    cd /vagrant/repositories/citemgr
    $GIT pull
else
    echo "Installing citemgr"
    cd /vagrant/repositories
    echo  Running  $GIT https://github.com/cite-architecture/citemgr.git
    $GIT clone https://github.com/cite-architecture/citemgr.git
fi


# https://github.com/cite-architecture/citeservlet.git
if [ -d "/vagrant/repositories/citeservlet" ]; then
    echo "Checking for updates to citeservlet"
    cd /vagrant/repositories/citeservlet
    $GIT pull
else
    echo "Installing citeservlet"
    cd /vagrant/repositories
    echo  Running  $GIT https://github.com/cite-architecture/citeservlet.git
    $GIT clone https://github.com/cite-architecture/citeservlet.git
fi


# https://github.com/homermultitext/hmt-digital
if [ -d "/vagrant/repositories/hmt-digital" ]; then
    echo "Checking for updates to hmt-digital"
    cd /vagrant/repositories/hmt-digital
    $GIT pull
else
    echo "Installing hmt-digital"
    cd /vagrant/repositories
    echo  Running  $GIT  https://github.com/homermultitext/hmt-digital
    $GIT clone  https://github.com/homermultitext/hmt-digital
fi
