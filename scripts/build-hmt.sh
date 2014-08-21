#!/usr/bin/env /bin/bash

GRADLE=`which gradle`
GIT=`which git`

BRANCH="master"
if [ "$#" -eq 1 ]; then
    BRANCH=$1
fi
echo "Checking out branch ${BRANCH} of hmt-archive"
cd /vagrant/repositories/hmt-archive
$GIT checkout $BRANCH

$GRADLE clean
$GRADLE allTtl



