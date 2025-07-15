# TBD
 
 Testing checklist (currently as July 13, 2025)

 - [x] Touch
 - [x] Power button (to lock)
 - [ ] Decryption
 - [x] Micro SD/USB-OTG
 - [ ] MTP
 - [ ] NANDroid backups/restore
 - [ ] Zip file flashing
 - [ ] Img file flashing
 - [x] ADB sideload
 - [x] Rebooting
 - [x] Saving logs to Micro SD/USB OTG
 - [ ] Flashing TWRP

# How to build 
Visit  https://github.com/azwhikaru/Action-TWRP-Builder and fork and go to Actions and press the Run Workflow. Fill these options.

Github Actions would be the easiest option.

| Name                 | Description                                       | Example                                                      |
| -------------------- | ------------------------------------------------- | ------------------------------------------------------------ |
| `MANIFEST_URL`       | Source address (dont change)                                    | https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git |
| `MANIFEST_BRANCH`    | Source branch (dont change)                                     | twrp-12.1                                                    |
| `DEVICE_TREE_URL`    | Device address                                   |      https://github.com/TWRP-for-Retroid-Pocket-5/android_device_moorechip_kona
| `DEVICE_TREE_BRANCH` | Device branch                                     | android-13                                                |
| `DEVICE_PATH`        | Device location                                   | device/moorechip/kona                                            |
| `COMMON_TREE_URL`    | Common tree address                               | leave empty |
| `COMMON_PATH`        | Common tree location                              | leave empty                                   |
| `DEVICE_NAME`        | Model name                                        | kona                                                        |
| `MAKEFILE_NAME`      | Makefile name                                     | twrp_kona                                                   |
| `BUILD_TARGET`       | Build Target Partition (boot/recovery/vendorboot) | boot                                                     |
