#!/system/bin/sh
# DarkSpell Kernel Manager
# Profile initialization script by Karthik Karhem
# Credits to nathanchance

# If there is not a persist value, we need to set one
if [ ! -f /data/property/persist.darkspell.profile ]; then
    setprop persist.darkspell.profile 1
fi

