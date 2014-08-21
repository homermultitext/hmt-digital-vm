#!/usr/bin/env /bin/bash

/vagrant/scripts/build-ttl.sh
/vagrant/scripts/load-hmt.sh

/vagrant/scripts/build-war.sh
/vagrant/scripts/run-hmt.sh
