#!/usr/bin/env /bin/bash
#
# install hmt-digital.war in tomcat and restart tc
#

HMTDIGITAL=/vagrant/repositories/hmt-digital


GRADLE=`which gradle`

cd /vagrant/repositories/citeservlet

echo "Build war file.  Clean out previous build."

$GRADLE clean

echo "Build new war file from vm* configuration files in hmt-digital repository"

$GRADLE -Pconf=${HMTDIGITAL}/confs/vmconf.gradle   -Plinks=${HMTDIGITAL}/confs/vmlinks.gradle   -Pcustom=${HMTDIGITAL}/hmt/ war



