#!/bin/bash

prepend_zero () {
    seq -f "%02g" $1 $1
}

artist=$(echo -n $(cmus-remote --server 127.0.0.1 --passwd password -C status | grep artist -m 1| cut -c 12-))
if [[ $artist == "" ]]; then
	echo ""
fi
song=$(echo -n $(cmus-remote --server 127.0.0.1 --passwd password -C status | grep title | cut -c 11-))

position=$(cmus-remote --server 127.0.0.1 --passwd password -C status | grep position | cut -c 10-)
duration=$(cmus-remote --server 127.0.0.1 --passwd password -C status | grep duration | cut -c 10-)

echo -n "$artist - $song"
