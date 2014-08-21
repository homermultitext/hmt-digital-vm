#!/usr/bin/env /bin/bash

## Install web pages:
echo "Copying web pages into place."
sudo cp -r -u /vagrant/system/web/* /var/www/html
echo "Done."
