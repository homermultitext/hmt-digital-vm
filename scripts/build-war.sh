#!/usr/bin/env /bin/bash
#
# install hmt-digital.war in tomcat and restart tc
#

HMTDIGITAL=/vagrant/repositories/hmt-digital


GRADLE=`which gradle`

cd /vagrant/repositories/citeservlet

$GRADLE -Pconf=${HMTDIGITAL}/confs/localconf.gradle   -Plinks=${HMTDIGITAL}/confs/locallinks.gradle   -Pcustom=${HMTDIGITAL}/hmt/ war

