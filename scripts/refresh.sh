#!/usr/bin/env /bin/bash

# Instal web pages
/vagrant/scripts/web.sh

# Install jena
/vagrant/scripts/get-jena.sh

# Pull on all repositories
/vagrant/scripts/pull-repos.sh
