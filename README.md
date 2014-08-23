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

## Other options



- rebuild the HMT TTL graph: `build-ttl.sh [BRANCH]`  If BRANCH is given, that branch of the hmt-archive
will be used:  otherwise, the current master branch will be used.
- reload the HMT graph in a SPARQL endpoint: `load-ttl.sh`
- rebuild the hmt-digital war file: `build-war.sh`
- install the hmt-digital war file in the servlet container: `run-war.sh`

## Running a local image service

By default, the virtual machine is configured to use the image service at `www.homermultitext.org`.  If you have
a set of pyramidal files on a local disk, you can easily use them to serve a local image service.

`hmt-digital` defines two virtual machines:  in addition to the default machine, a second machine named `hmt` attempts to mount a file system at `/Volumes/HMT/pyramids` in the host operating system at `/pyramids` in the VM, so if you have a directory of pyramidal images on your host system at that location, they will be available in the VM as well.  To use the second VM, include its name in all vagrant commands. e.g.,

    vagrant up hmt
    vagrant ssh hmt
    

**ADD*:  how to configure a CITE image service.  (TBA)

## What's installed where

The virtual machine is a generic Ubuntu 14.04 machine with the following services installed in default 
locations:


- `apache2` running on port 80 (mapped to port 8880 on your host machine), with the `iipsrv` fast-cgi running on `http://localhost/iipsrv/iipsrv.fcgi` (for CITE Image service).  Configuration is in `/etc/apache2`, and web root is in `/var/www/html`.
- `tomcat6` running on port 8080.  CATALINA_HOME is in  `/usr/share/tomcat6` and CATALINA_BASE in `/var/lib/tomcat6`.
- `apache-jena` and `jena-fuseki` are both installed in `/opt`.  `fuseki-server` is running on port 3030.
