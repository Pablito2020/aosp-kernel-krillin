# Custom kernel for BQ Aquaris E4.5 (krillin)
# Kernel version 3.10.72
# Vendor Wingstech (ALPS.L1.MP12.V1.2_WT6582_WE_L1)
Works in the ALPS L1 mt6582 ROM
=========================================================================
* Works:
	* LCM(hx8389_qhd_dsi_vdo_truly hx8389b_qhd_dsi_vdo_tianma)
	* Touch (FT5336)
	* Sdcard
	* Wi-fi
	* BT
	* GPS
	* Button-backlight
	* Brightness
	* Leds indication
	* OTG
	* Sound (Headphones only for now)
	* Vibrator
	* Battery 21500mah(stock table)
        * GPU 

=========================================================================
* Disabled drivers:
	* NOT Disabled Drivers now..

=========================================================================
* Don't work:
	* CAMERA (SENSORS + LENS)
        * FLASHLIGHT
        * SOUND IN SPEAKER
        * DOUBLETAP2WAKE DRIVER 
        * ALSPS, ACCELEROMETER, PROXIMITY, GYROSCOPE AND MAGNETIC SENSOR

=================================================
# BUILD

$ git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8

$ git clone https://github.com/Pablito2020/kernel-3.10

$ cd kernel-3.10

$ . build-krillin.sh

# AUTORS:

* PABLITO2020
