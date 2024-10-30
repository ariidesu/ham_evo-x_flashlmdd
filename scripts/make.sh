set -e
DEVICE=flashlmdd

cd /ham-build/android
croot
. build/envsetup.sh

export TARGET_USE_PICO_GAPPS=true
lunch lineage_$DEVICE-userdebug
echo "Making target packages for $DEVICE..."
m evolution
echo "Build process complete for $DEVICE!"

mkdir -p /ham-output/
mv out/target/product/flashlmdd/* /ham-output/