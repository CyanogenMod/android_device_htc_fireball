### Device tree depends on
1.  [htc-msm8960/proprietary\_vendor\_htc/fireball](https://github.com/htc-msm8960/proprietary_vendor_htc/tree/cm-10.1/fireball)
2.  [CyanogenMod/android\_device\_htc\_msm8960\-common](https://github.com/CyanogenMod/android_device_htc_msm8960-common/tree/cm-10.1)
3.  [CyanogenMod/android\_kernel\_htc\_msm8960](https://github.com/CyanogenMod/android_kernel_htc_msm8960/tree/cm-10.1)

### Known Issues
1.  MicroSD: does not show as a mass storage drive when connected to the computer  
2.  OTG: mounting a USB stick via OTG is not yet implemented  
3.  Camera: zoom does not work  
4.  Camcorder: auto-focus has trouble and not all resolutions work
5.  RIL: cannot select bands from hidden phone menu (this is different than selecting a network mode)  
6.  RIL: every time the phone boots there is a "SIM card added" notice  
  *Workaround:* do not hit restart, just hit back and the notice will go away  
  if gapps is installed, you may also get an activation notice  
  *Workaround:* just hit home and the notice will go away  

### Tips and Tricks
1.  For use outside of the U.S.A. and on carriers other than Verizon Wireless, the following properties need to be removed from build.prop:  
```ro.cdma.home.operator.alpha=Verizon  
gsm.sim.operator.alpha=Verizon  
gsm.operator.alpha=Verizon  
ro.cdma.home.operator.numeric=310012  
gsm.sim.operator.numeric=310012  
gsm.operator.numeric=310012  
ro.com.google.clientidbase=android-htc  
ro.com.google.clientidbase.yt=android-verizon  
ro.com.google.clientidbase.am=android-verizon  
ro.com.google.clientidbase.gmm=android-htc  
ro.com.google.clientidbase.ms=android-verizon```  

