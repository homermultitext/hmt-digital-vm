#hmt-digital-vm#


A Vagrant virtual machine for working with data from the HMT project archive using a locally running installation of the project's digital applications and services, `hmt-digital`. 


## Prerequisites

- Vagrant: <http://www.vagrantup.com/downloads.html>
- VirtualBox: <https://www.virtualbox.org/wiki/Downloads>

The initial build requires internet access;  after the initial build, you can
run the virtual machine offline.

## Installing the virtual machine

In your host operating system:

    vagrant up
    vagrant ssh
    
Then, within your virtual (guest) machine:

    
    refresh.sh
    
    

## Running and using the HMT system

To build and run the HMT system in one line, within your virtual machine:

    all-hmt.sh

From your host operating system, point a web browser at `http://localhost:8880`

## More information



For more information, see [the project wiki](https://github.com/homermultitext/hmt-digital-vm/wiki).
