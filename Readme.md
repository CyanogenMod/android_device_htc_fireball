### BoardConfig.mk

`TARGET_KERNEL_SOURCE := kernel/htc/iv-msm8960`  
This kernel source comes from
`git://github.com/intervigilium/android_kernel_htc_msm8960.git`

### device-proprietary-files.txt

This file list is very incomplete, and mostly copies the htc jewel  
Commented lines refer to files which do not exist in the stock ROM

### /ramdisk/*

fstab.fighter is complete  
init.fighter.rc, init.fighter.usb.rc, ueventd.fighter.rc: all of these are from the stock ROM

### extract-files.sh

There are a number of files specified in msm8960-common which do not exist in the stock ROM and cannot be extracted from the phone:

1.  bin/cand
2.  lib/egl/libGLESv2S3D_adreno200.so
3.  lib/egl/libplayback_adreno200.so
4.  lib/libc2d2_z180.so
5.  etc/firmware/modem*
6.  etc/firmware/q6*
7.  etc/firmware/wcnss*

### system.prop

This is the stock system.prop.  The fat needs to be trimmed
