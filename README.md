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


## Running a local image service

By default, the virtual machine is configured to use the image service at `www.homermultitext.org`.  If you have
a set of pyramidal files on a local disk, you can easily use them to serve a local image service.

The Vagrant script checks for an environmental variable named `PYRAMIDS`:  if it is defined, it attempts to mount a file system at `PYRAMIDS` in the host operating system at `/pyramids` in the VM.  You can set the environmental variable and start the VM in a single line like this:

    PYRAMIDS=/Volumes/HMT/pyramids vagrant up
    
This will start the VM, and make the host file system at `/Volumes/HMT/pyramids` visible in the VM at `/pyramids`.
    

**ADD*:  how to configure a CITE image service.  (TBA)

