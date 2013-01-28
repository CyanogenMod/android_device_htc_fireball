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

## Tips and Tricks
1.  For use outside of the U.S.A. and on carriers other than Verizon Wireless, the following properties need to be removed from build.prop

    `ro.com.google.clientidbase=android-verizon  
    ro.com.google.clientidbase.yt=android-verizon  
    ro.com.google.clientidbase.am=android-verizon  
    ro.com.google.clientidbase.vs=android-verizon  
    ro.com.google.clientidbase.gmm=android-verizon  
    ro.com.google.clientidbase.ms=android-verizon  
    ro.cdma.home.operator.numeric=310004  
    ro.cdma.home.operator.alpha=Verizon  
    gsm.sim.operator.alpha=Verizon  
    gsm.sim.operator.numeric=310004  
    gsm.sim.operator.iso-country=us  
    gsm.operator.alpha=Verizon  
    gsm.operator.numeric=310004  
    gsm.operator.iso-country=us  
    ro.carrier=Verizon`  
