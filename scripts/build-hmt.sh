#!/usr/bin/env /bin/bash
GRADLE=`which gradle`

cd /vagrant/repositories/hmt-archive
$GRADLE clean
$GRADLE allTtl



