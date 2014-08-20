#hmt-digital-vm#


A Vagrant VM configuration for building a graph of the HMT project archive, and serving it with the `hmt-digital` servlet.  The configuration uses a 64-bit Ubuntu 14.04 OS with Virtual Box. 

## Prerequisites

- vagrant: <http://www.vagrantup.com/downloads.html>
- VirtualBox: <https://www.virtualbox.org/wiki/Downloads>


## Installing the virtual machine

In your host operating system:

    vagrant up
    vagrant ssh
    
Then, within your virtual (guest) machine:

    
    bash /vagrant/scripts/refresh.sh
    
    
## Building and running the HMT system in one line

Within your virtual machine:

    bash /vagrant/scripts/all-hmt.sh

## Other options

- rebuild the HMT TTL graph
- reload the HMT graph in a SPARQL endpoint
- restart the servlet container

    
