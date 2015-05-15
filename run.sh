#!/bin/sh
if [ -n "$WRK_USR_TOKEN" ] ; then
	echo $WRK_USR_TOKEN > ~/.wrk/token
else
	echo "WARN: Trello token for wrk not set. please specify using environment variable WRK_USR_TOKEN. " >&2
fi
exec "$@"
