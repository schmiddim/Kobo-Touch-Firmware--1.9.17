#!/bin/sh

while true; do
	zcat /usr/local/Kobo/slideshow/fnac/1.gz | /usr/local/Kobo/pickel showpic
	usleep 2000000
	zcat /usr/local/Kobo/slideshow/fnac/2.gz | /usr/local/Kobo/pickel showpic 1
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/fnac/3.gz | /usr/local/Kobo/pickel showpic
	usleep 2000000
	zcat /usr/local/Kobo/slideshow/fnac/4.gz | /usr/local/Kobo/pickel showpic 1
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/fnac/5.gz | /usr/local/Kobo/pickel showpic
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/fnac/6.gz | /usr/local/Kobo/pickel showpic 1
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/fnac/7.gz | /usr/local/Kobo/pickel showpic
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/fnac/8.gz | /usr/local/Kobo/pickel showpic
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/fnac/9.gz | /usr/local/Kobo/pickel showpic
	usleep 2000000
	zcat /usr/local/Kobo/slideshow/fnac/10.gz | /usr/local/Kobo/pickel showpic 1
	usleep 7000000
	zcat /usr/local/Kobo/slideshow/fnac/11.gz | /usr/local/Kobo/pickel showpic
	usleep 2000000
	zcat /usr/local/Kobo/slideshow/fnac/12.gz | /usr/local/Kobo/pickel showpic 1
	usleep 7000000
done
