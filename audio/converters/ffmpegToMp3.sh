!#/bin/bash

ffmpeg -i $1 \
	-ac 2 -codec:a libmp3lame -b:a 48k -ar 16000 \
	$2
