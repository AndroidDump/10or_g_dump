#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32021804:8c7868840e8f95af33ab8dba7467ff4244ff96cb; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:28249384:4d25875059b51ba5d0b55d9c8f167606d2461b4e EMMC:/dev/block/bootdevice/by-name/recovery 8c7868840e8f95af33ab8dba7467ff4244ff96cb 32021804 4d25875059b51ba5d0b55d9c8f167606d2461b4e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
