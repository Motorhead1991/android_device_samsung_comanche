#!/system/bin/sh

BB=/system/xbin/busybox

############################
# Custom Kernel Settings for B14CKB1RD Kernel!!
#

############################
# Default MPDecision OFF!
stop mpdecision

############################
# MSM_Hotplug Settings
#
echo 1 > /sys/module/msm_hotplug/cpus_boosted
echo 500 > /sys/module/msm_hotplug/down_lock_duration
echo 2500 > /sys/module/msm_hotplug/boost_lock_duration
echo 200 5:100 50:50 350:200 > /sys/module/msm_hotplug/update_rates
echo 400 > /sys/module/msm_hotplug/fast_lane_load
echo 1 > /sys/module/msm_hotplug/max_cpus_online_susp

############################
# Scheduler and Read Ahead
#
echo fiops > /sys/block/mmcblk0/queue/scheduler
echo 2048 > /sys/block/mmcblk0/bdi/read_ahead_kb

############################
# GPU Governor
#
echo simple_ondemand > /sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/governor
echo 400000000 > /sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk

############################
# Set MIN-MAX Freq on boot
#
echo 384000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo 384000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
echo 1512000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo 1512000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq


############################
# Power Effecient Workqueues (Enable for battery)
#
# echo 1 > /sys/module/workqueue/parameters/power_efficient
echo 0 > /sys/module/subsystem_restart/parameters/enable_ramdumps

############################
# Synapse Support
#

# Mount root as RW to apply tweaks and settings
$BB mount -o remount,rw /;
$BB mount -o rw,remount /system

# Cleanup.
$BB rm -f /res/synapse/debug/* 

# Make tmp folder
$BB mkdir /tmp;

# Give permissions to execute
$BB chown -R root:system /tmp/;
$BB chmod -R 777 /tmp/;
$BB chmod -R 777 /res/;
$BB chmod -R 6755 /res/synapse/actions/;
$BB chmod -R 6755 /res/synapse/files/;
$BB chmod -R 6755 /sbin/;
$BB chmod -R 6755 /system/xbin/;
$BB echo "Boot initiated on $(date)" > /tmp/bootcheck;

ln -s /res/synapse/uci /sbin/uci
/sbin/uci
