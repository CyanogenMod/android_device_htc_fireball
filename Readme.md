### BoardConfig.mk

`TARGET_KERNEL_SOURCE := kernel/htc/msm8960`  
This kernel source comes from [here](https://github.com/intervigilium/android_kernel_htc_msm8960). The official CM repository hasn't been updated with a fighter configuration yet ([awaiting review](http://review.cyanogenmod.org/#/c/30137/))

### extract-files.sh / setup-makefiles.sh

Instead of running these scripts, get the proprietary libraries and makefiles from [here](https://github.com/mdmower/htc-fireball-vendor).

### system.prop

This is the stock system.prop.  More fat needs to be trimmed.
