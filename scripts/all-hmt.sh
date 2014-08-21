#!/usr/bin/env /bin/bash

/vagrant/scripts/build-ttl.sh
/vagrant/scripts/load-ttl.sh

/vagrant/scripts/build-war.sh
/vagrant/scripts/run-war.sh
