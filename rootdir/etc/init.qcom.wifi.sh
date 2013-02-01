#!/system/bin/sh
# Copyright (c) 2010-2012, Code Aurora Forum. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#     * Neither the name of Code Aurora Forum, Inc. nor the names of its
#       contributors may be used to endorse or promote products derived
#      from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
# ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# This script will load and unload the wifi driver to put the wifi in
# in deep sleep mode so that there won't be voltage leakage.
# Loading/Unloading the driver only incase if the Wifi GUI is not going
# to Turn ON the Wifi. In the Script if the wlan driver status is
# ok(GUI loaded the driver) or loading(GUI is loading the driver) then
# the script won't do anything. Otherwise (GUI is not going to Turn On
# the Wifi) the script will load/unload the driver
# This script will get called after post bootup.


# The property below is used in Qcom SDK for softap to determine
# the wifi driver config file
setprop wlan.driver.config /system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini
# We need to set up some symlinks for Prima to work                     
mount -o remount,rw /dev/block/mmcblk0p14 /system                       
#rm /system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin               
#ln -s /persist/WCNSS_qcom_wlan_nv.bin /system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin
                                                                        
rm /system/lib/modules/wlan.ko
ln -s /system/lib/modules/prima/prima_wlan.ko /system/lib/modules/wlan.ko
sync                                                         
mount -o remount,ro /dev/block/mmcblk0p14 /system              

echo 1 > /dev/wcnss_wlan
echo 1 > /sys/module/wcnss_ssr_8960/parameters/enable_riva_ssr
        
# Plumb down the device serial number
serialno=`getprop ro.serialno`
echo $serialno > /sys/devices/platform/wcnss_wlan.0/serial_number

exit 0
