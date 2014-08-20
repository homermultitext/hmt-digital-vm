#hmt-digital-vm#


A Vagrant VM configuration for serving the HMT project archive with the hmt-digital servlet.  The configuration uses a 64-bit Ubuntu 14.04 OS with Virtual Box. 

## Prerequisites

- vagrant: <http://www.vagrantup.com/downloads.html>
- VirtualBox: <https://www.virtualbox.org/wiki/Downloads>


## Installation

In your host operating system:

    vagrant up
    vagrant ssh
    
Then, within your virtual (guest) machine:

    cd /vagrant
    bash scripts/refresh.sh
    
