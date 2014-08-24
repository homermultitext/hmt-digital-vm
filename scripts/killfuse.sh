#!/usr/bin/env /bin/bash

PORT=3030
FUSER=`which fuser`
FUSEOUT=`$FUSER $PORT/tcp`
if [ -n "$FUSEOUT" ]; then
    echo killing process #${FUSEOUT}# ...
else
    echo no process $FUSEOUT
fi
