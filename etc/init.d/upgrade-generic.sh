UBOOT=$1
WAVEFORM=$2
KERNEL=$3
DEVICE=$4

if [ -e $UBOOT ]; then
	echo Upgrading U-Boot $UBOOT
	dd if=$UBOOT of=/dev/$DEVICE bs=1K seek=1 skip=1
	if [ $? != 0 ] ; then
		exit 1
	fi
	sync
	sync
	echo Done upgrading U-Boot
fi

if [ -e $WAVEFORM ]; then
	echo Upgrading Waveform $WAVEFORM
	dd if=$WAVEFORM of=/dev/$DEVICE bs=512K seek=10 count=1
	if [ $? != 0 ] ; then
		exit 1
	fi
	sync
	sync
	echo Done upgrading Waveform
fi

if [ -e $KERNEL ]; then
	echo Upgrading kernel... $KERNEL
	dd if=$KERNEL of=/dev/$DEVICE bs=512 seek=2048
	if [ $? != 0 ]; then
		exit 1
	fi
	sync
	sync
	echo Done upgrading kernel...
fi
