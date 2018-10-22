#!/bin/bash 

if [ -f 4822247.rss ]; then
	rm -f 4822247.rss
fi

wget -nc http://audioboom.com/channels/4822247.rss

if [ -f rss.xml ]; then
	cat 4822247.rss | grep mp3 | cut -d'"' -f2 | cut -d"?" -f1 | xargs wget -nc
	rm -f 4822247.rss
fi
