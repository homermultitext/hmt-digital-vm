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

    
    /vagrant/scripts/refresh.sh
    
    

## Running and using the HMT system

To build and run the HMT system in one line, within your virtual machine:

    /vagrant/scripts/all-hmt.sh

From your host operating system, point a web browser at `http://localhost:8880`

## Other options

See individual scripts to:

- rebuild the HMT TTL graph
- reload the HMT graph in a SPARQL endpoint
- restart the servlet container

    
