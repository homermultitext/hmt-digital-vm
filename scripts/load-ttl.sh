#!/usr/bin/env /bin/bash


# load and start fuseki via tdbloader2



#CONFDIR=/Users/nsmith/Desktop/DT-data/fuseki-confs
CONF=/vagrant/system/fuseki-conf.ttl
TDBDIR=/vagrant/data/tdbs
TTL=/vagrant/data/hmt.ttl


JENA=/opt/jena-fuseki-1.1.0/fuseki-server
TDBLOADER=/opt/apache-jena-2.12.0/bin/tdbloader2
PORT=3030
export FUSEKI_HOME=/opt/jena-fuseki-1.1.0

# Blow out existing data dir:
echo Removing existing data from $TDBDIR
if [ -d $TDBDIR ]; then
    /bin/rm -rf $TDBDIR
fi
/bin/mkdir  $TDBDIR

# Load ttl:
echo Loading data into new tdb data directory:
echo sudo $TDBLOADER -loc $TDBDIR $TTL
sudo $TDBLOADER -loc $TDBDIR $TTL

# Restart fuseki:
echo Starting fuseki:  $JENA --port=$PORT --config=$CONF
$JENA --port=$PORT --config=$CONF
echo ""
echo Done.  SPARQL endpoint running on port $PORT.




