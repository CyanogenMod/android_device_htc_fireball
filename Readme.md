### BoardConfig.mk

`TARGET_KERNEL_SOURCE := kernel/htc/msm8960`  
This kernel source comes from [here](https://github.com/intervigilium/android_kernel_htc_msm8960). The official CM repository hasn't been updated with a fighter configuration yet ([awaiting review](http://review.cyanogenmod.org/#/c/30137/))

### extract-files.sh

Instead of running this script, get the proprietary files from [here](https://github.com/mdmower/htc-fireball-vendor). Under msm8960-common, remove bin/cand from common-proprietary-files.txt. Then run setup-makefiles.sh from within the fireball device tree.

### system.prop

This is the stock system.prop.  The fat needs to be trimmed.
