#!/system/bin/sh

################################################################################
# helper functions to allow Android init like script

function write() {
    echo -n $2 > $1
}

function copy() {
    cat $1 > $2
}
################################################################################

{

sleep 10

# Disable MSM Thermal Driver
write /sys/module/msm_thermal/parameters/enabled "N"

# Little Cluster
chmod 0644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
chmod 0644 /sys/devices/system/cpu/cpu0/cpufreq/interactive/*

# Big Cluster
chmod 0644 /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
chmod 0644 /sys/devices/system/cpu/cpu4/cpufreq/interactive/*

# VM Tweaks
write /proc/sys/vm/laptop_mode 1
write /proc/sys/vm/swappiness 60
write /proc/sys/vm/vfs_cache_pressure 100
write /proc/sys/vm/vm_dirty_ratio 50
write /proc/sys/vm/dirty_background_ratio 20

# I/O Scheduler
setprop sys.io.scheduler "maple"
write /sys/block/mmcblk0/queue/read_ahead_kb 1024

sleep 20

}&
