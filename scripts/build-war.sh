#!/usr/bin/env /bin/bash
#
# build hmt-digital servlet.  If an argument is given, it's the branch of hmt-digital
# to use.
#



if [ $# -eq 1 ]; then
    BRANCH=$1
else 
    BRANCH=master
fi
HMTDIGITAL=/vagrant/repositories/hmt-digital

GIT=`which git`


echo "In ${HMTDIGITAL}, checkout $BRANCH"
cd $HMTDIGITAL
$GIT checkout $BRANCH

GRADLE=`which gradle`
cd /vagrant/repositories/citeservlet

echo "Build war file.  Clean out previous build."

$GRADLE clean

echo "Build new war file from vm* configuration files in hmt-digital repository"

$GRADLE -Pconf=${HMTDIGITAL}/confs/vmconf.gradle   -Plinks=${HMTDIGITAL}/confs/vmlinks.gradle   -Pcustom=${HMTDIGITAL}/hmt/ war



