#!/bin/sh

if [ -e /mnt/onboard/.kobo/manifest.md5sum ]; then 
	cd /mnt/onboard/.kobo
	md5sum -c manifest.md5sum
	if [ $? != 0 ]; then
		rm -rf manifest.md5sum
		exit 1;
	fi
	rm -rf manifest.md5sum
	cd /
fi

PLATFORM=freescale
if [ `dd if=/dev/mmcblk0 bs=512 skip=1024 count=1 | grep -c "HW CONFIG"` == 1 ]; then
	PLATFORM=ntx508
fi

UBOOT=/mnt/onboard/.kobo/upgrade/$PLATFORM/u-boot.bin
WAVEFORM=totally_not_used
KERNEL=/mnt/onboard/.kobo/upgrade/$PLATFORM/uImage

[ ! -e $UBOOT ] && UBOOT=/mnt/onboard/.kobo/upgrade/u-boot.bin
[ ! -e $KERNEL ] && KERNEL=/mnt/onboard/.kobo/upgrade/uImage

echo your platform is $PLATFORM
echo $UBOOT
echo $KERNEL

/etc/init.d/upgrade-generic.sh $UBOOT $WAVEFORM $KERNEL mmcblk0
exit $?
