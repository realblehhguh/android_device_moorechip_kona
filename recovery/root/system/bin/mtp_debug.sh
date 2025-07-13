#!/system/bin/sh

# MTP Debug Script for TWRP
# Use this to diagnose MTP issues

echo "=== MTP Debug Information ==="
echo "Date: $(date)"
echo ""

echo "=== USB Controller ==="
echo "USB Controller: $(getprop ro.boot.usbcontroller)"
echo "USB Config: $(getprop sys.usb.config)"
echo "USB State: $(getprop sys.usb.state)"
echo "USB ConfigFS: $(getprop sys.usb.configfs)"
echo ""

echo "=== MTP Properties ==="
echo "MTP Enabled: $(getprop persist.vendor.mtp.enable)"
echo "TWRP MTP Enabled: $(getprop twrp.mtp.enabled)"
echo ""

echo "=== USB Device Nodes ==="
ls -la /dev/mtp* 2>/dev/null || echo "No MTP device nodes found"
ls -la /dev/usb* 2>/dev/null || echo "No USB device nodes found"
echo ""

echo "=== USB Gadget ConfigFS ==="
if [ -d "/config/usb_gadget/g1" ]; then
    echo "ConfigFS gadget exists"
    ls -la /config/usb_gadget/g1/functions/ 2>/dev/null || echo "No functions directory"
    ls -la /config/usb_gadget/g1/configs/ 2>/dev/null || echo "No configs directory"
else
    echo "ConfigFS gadget not found"
fi
echo ""

echo "=== Android USB Legacy ==="
if [ -d "/sys/class/android_usb/android0" ]; then
    echo "Legacy android_usb exists"
    echo "Functions: $(cat /sys/class/android_usb/android0/functions 2>/dev/null)"
    echo "Enable: $(cat /sys/class/android_usb/android0/enable 2>/dev/null)"
else
    echo "Legacy android_usb not found"
fi
echo ""

echo "=== Storage Mounts ==="
mount | grep -E "(sdcard|storage|mnt)"
echo ""

echo "=== TWRP Processes ==="
ps | grep -E "(mtp|twrp|recovery)"
echo ""

echo "=== End Debug Information ==="