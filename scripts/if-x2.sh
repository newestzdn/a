# Cleanup
#rm -rf device frameworks external tools hardware/ device/mediatek  vendor/mediatek hardware/mediatek android packages build prebuilts prebuilt

# ROM Init
repo init -u https://github.com/ProjectInfinity-X/manifest -b 16 -g default,-mips,-darwin,-notdefault --depth=1 --git-lfs --no-repo-verify
#repo init -u https://github.com/AxionAOSP/android.git -b lineage-23.2 --git-lfs
/opt/crave/resync.sh

# Device 
rm -rf device/infinix/X6882
git clone -b ax  https://github.com/zaidannn7/device_infinix_X6882-jva device/infinix/X6882
git clone -b main https://github.com/shirukalan9/zvt vendor/infinix/X6882

# Build
source build/envsetup.sh
 


lunch infinity_X6882-user
m bacon 
