#!/bin/sh

i=0;
while true; do
        i=$((((i + 1)) % 11));
        zcat /etc/images/on-$i.raw.gz | /usr/local/Kobo/pickel showpic 1;
        usleep 250000;
done 
