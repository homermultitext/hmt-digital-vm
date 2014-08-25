#hmt-digital-vm#


A Vagrant VM configuration for building a graph of the HMT project archive, and serving it with the `hmt-digital` servlet.  The configuration uses a 64-bit Ubuntu 14.04 operating system running in Virtual Box. 

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
