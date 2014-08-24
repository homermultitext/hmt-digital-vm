#!/usr/bin/env /bin/bash


JENA_VERSION="apache-jena-2.12.0"
FUSEKI_VERSION="jena-fuseki-1.1.0"


JENA_DIR="/opt/${JENA_VERSION}"
FUSEKI_DIR="/opt/${FUSEKI_VERSION}"

CURL=`which curl`
TAR=`which tar`
RM=`which rm`

# For tdbloader:
if [ -d $JENA_DIR ]; then
    echo "apache-jena already installed."
else 
    FULL_PATH=http://apache.arvixe.com/jena/binaries/${JENA_VERSION}.tar.gz
    echo  "Downloading apache-jena package: "
    echo "$CURL ${FULL_PATH} > /tmp/jena.tgz"
    $CURL  FULL_PATH > /tmp/jena.tgz
    cd /opt
    sudo $TAR -zvxf /tmp/jena.tgz
    $RM /tmp/jena.tgz
fi

