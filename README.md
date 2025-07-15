# TWRP Device Tree for Retroid Pocket 5

<<<<<<< HEAD
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
=======
This repository contains the device tree for building TWRP (Team Win Recovery Project) for the **Retroid Pocket 5** gaming handheld device.

## Device Information

| Specification | Value |
|---------------|-------|
| **Device Name** | Retroid Pocket 5 |
| **Codename** | kona |
| **Manufacturer** | moorechip |
| **Brand** | qti |
| **Architecture** | arm64 (with arm32 support) |
| **Platform** | Qualcomm Snapdragon (kona) |
| **Android Version** | 11 |
| **Security Patch** | 2024-07-05 |

## Features

- **A/B Partition Support**: Full A/B OTA update support
- **Encryption Support**: FBE (File-Based Encryption) with QCOM hardware decryption
- **MTP Support**: Media Transfer Protocol for file transfers
- **USB OTG**: External storage support
- **Fastbootd**: Modern fastboot implementation
- **Portrait Mode**: Optimized for handheld gaming device orientation (180° rotation)

## Building TWRP

### Prerequisites

1. Set up Android build environment
2. Initialize TWRP minimal manifest:
   ```bash
   repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
   ```
3. Sync the repository:
   ```bash
   repo sync
   ```

### Clone Device Tree

```bash
git clone https://github.com/your-username/android_device_moorechip_kona.git device/moorechip/kona
```

### Build Commands

```bash
# Set up build environment
. build/envsetup.sh

# Choose target
lunch twrp_kona-eng

# Build TWRP
mka recoveryimage
```

## Installation

1. Boot your device into fastboot mode
2. Flash the recovery image:
   ```bash
   fastboot flash recovery out/target/product/kona/recovery.img
   ```
3. Reboot to recovery:
   ```bash
   fastboot reboot recovery
   ```

## TWRP Configuration

- **Theme**: Portrait HDPI
- **Brightness Control**: `/sys/class/backlight/panel0-backlight/brightness`
- **Max Brightness**: 255
- **Default Brightness**: 120
- **Rotation**: 180° (optimized for handheld orientation)
- **Crypto Support**: PIN, Pattern, Password
- **Keymaster Version**: 3

## Testing Status

Current testing checklist:

- [ ] Touch input
- [ ] Power button (screen lock)
- [ ] Decryption (FBE)
- [ ] Micro SD/USB-OTG support
- [ ] MTP (Media Transfer Protocol)
- [ ] NANDroid backups/restore
- [ ] ZIP file flashing
- [ ] IMG file flashing
- [ ] ADB sideload
- [ ] Device rebooting
- [ ] Log saving to external storage
- [ ] TWRP self-flashing

## Known Issues

- Testing in progress - please report any issues you encounter
- Decryption functionality may need additional testing
- Some features may require further validation

## Contributing

1. Fork the repository
2. Create a feature branch
3. Test your changes thoroughly
4. Submit a pull request with detailed description

## Credits

- **SebaUbuntu's TWRP device tree generator** - Initial device tree generation
- **TeamWin Recovery Project** - TWRP recovery
- **moorechip** - Original device manufacturer

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

---

**Disclaimer**: This is an unofficial TWRP build. Use at your own risk. Always ensure you have proper backups before flashing any custom recovery.
>>>>>>> 908a599 (Update README with comprehensive documentation)
