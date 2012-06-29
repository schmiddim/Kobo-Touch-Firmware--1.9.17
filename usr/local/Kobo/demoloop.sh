#!/bin/sh

while true; do
	zcat /usr/local/Kobo/slideshow/1.gz | /usr/local/Kobo/pickel showpic
	usleep 2000000
	zcat /usr/local/Kobo/slideshow/2.gz | /usr/local/Kobo/pickel showpic 1
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/3.gz | /usr/local/Kobo/pickel showpic
	usleep 2000000
	zcat /usr/local/Kobo/slideshow/4.gz | /usr/local/Kobo/pickel showpic 1
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/5.gz | /usr/local/Kobo/pickel showpic
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/6.gz | /usr/local/Kobo/pickel showpic 1
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/7.gz | /usr/local/Kobo/pickel showpic
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/8.gz | /usr/local/Kobo/pickel showpic
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/9.gz | /usr/local/Kobo/pickel showpic
	usleep 2000000
	zcat /usr/local/Kobo/slideshow/10.gz | /usr/local/Kobo/pickel showpic 1
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/11.gz | /usr/local/Kobo/pickel showpic
	usleep 2000000
	zcat /usr/local/Kobo/slideshow/12.gz | /usr/local/Kobo/pickel showpic 1
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/13.gz | /usr/local/Kobo/pickel showpic
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/14.gz | /usr/local/Kobo/pickel showpic
	usleep 2000000
	zcat /usr/local/Kobo/slideshow/15.gz | /usr/local/Kobo/pickel showpic 1
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/16.gz | /usr/local/Kobo/pickel showpic
	usleep 2000000
	zcat /usr/local/Kobo/slideshow/17.gz | /usr/local/Kobo/pickel showpic 1
	usleep 7000000
done
