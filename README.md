Device Tree for Moto G5S Plus (sanders)
===========================================

Before start userdata has to be transformed to ext4.
boot twrp and `mke2fs -t ext4 /dev/block/mmcblk0p54`
Problems:
* /dev/cpuset not in place
* /dev/pmsg0 not in place
* cutils-trace: Error opening trace file: Permission denied (13)

when halium booted, set udev rules:
`sudo -i`
`cat /var/lib/lxc/android/rootfs/ueventd*.rc|grep ^/dev|sed -e 's/^\/dev\///'|awk '{printf "ACTION==\"add\", KERNEL==\"%s\", OWNER=\"%s\", GROUP=\"%s\", MODE=\"%s\"\n",$1,$3,$4,$2}' | sed -e 's/\r//' >/usr/lib/lxc-android-config/70-sanders.rules`
The Motorola Moto G5S Plus (codenamed _"sanders"_) is a mid-range smartphone from Motorola Mobility.
It was announced in August 2017.

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Octa-core 2.0 GHz Cortex-A53
Chipset | Qualcomm MSM8953 Snapdragon 625
GPU     | Adreno 506
Memory  | 3/4 GB RAM
Shipped Android Version | 7.1.1
Storage | 32/64 GB
MicroSD | Up to 256 GB
Battery | Li-Ion 3000mAh battery
Display | 1080 x 1920 pixels, 5.5 inches (~401 ppi pixel density)
Camera  | Dual 13 MP, f/2.0, autofocus, dual-LED (dual tone) flash

Copyright 2018 - The LineageOS Project.

![Moto G5S Plus](https://cdn2.gsmarena.com/vv/pics/motorola/motorola-moto-g5s-plus-1.jpg "Moto G5S Plus")
