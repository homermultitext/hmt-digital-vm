#!/usr/bin/env /bin/bash
echo fuse home: $FUSEKI_HOME

# Restart fuseki:
echo Starting fuseki:  sudo $JENA --port=$PORT --config=$CONF
sudo $JENA --port=$PORT --config=$CONF




