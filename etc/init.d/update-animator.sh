#!/bin/sh

i=0;
while true; do
        i=$((((i + 1)) % 6));
        zcat /etc/images/update-spinner-$i.raw.gz | /usr/local/Kobo/pickel showpic 1;
        usleep 500000;
done 
