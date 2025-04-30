#!/system/bin/sh
MODDIR=${0%/*}
SELECTED_ANIMATION=`ls /data/local/bootanimations/*.zip | shuf -n 1`


if [ -f "/system/product/media/bootanimation.zip" ]; then
    mkdir -p "$MODDIR/system/product/media"
    cp -f "$SELECTED_ANIMATION" "$MODDIR/system/product/media/bootanimation.zip"
elif [ -f "/system/media/bootanimation.zip" ]; then
    mkdir -p "$MODDIR/system/media"
    cp -f "$SELECTED_ANIMATION" "$MODDIR/system/media/bootanimation.zip"
fi