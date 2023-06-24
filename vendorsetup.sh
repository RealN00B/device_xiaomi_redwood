echo "Cloning Common Device Tree for RedWOOD"
git clone https://github.com/RealN00B/device_xiaomi_sm7325-common.git -b superior device/xiaomi/sm7325-common

echo "Cloning Kernel for RedWOOD"
git clone https://github.com/RealN00B/kernel_xiaomi_sm7325.git -b lineage-20 --depth=1 kernel/xiaomi/sm7325

echo "Cloning Vendor for RedWOOD"
git clone https://github.com/RealN00B/vendor_xiaomi_redwood.git vendor/xiaomi/redwood
git clone https://github.com/RealN00B/vendor_xiaomi_sm7325-common.git vendor/xiaomi/sm7325-common

echo "Cloning Extra Stuff for RedWOOD"
git clone https://github.com/CannedShroud/android_packages_apps_KProfiles packages/apps/KProfiles 
