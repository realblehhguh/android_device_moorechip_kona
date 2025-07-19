# TWRP Device Tree for Retroid Pocket 5
> [!IMPORTANT]
> - This device uses A/B (Dynamic Partitions).
> - MTP doesnt work.
> - Unable to flash TWRP at the moment.
> - Decryption doesnt work.
> - FastbootD doesnt work.

## Device Information

| Specification | Value |
|---------------|-------|
| **Device Name** | Retroid Pocket 5 |
| **Codename** | kona |
| **Manufacturer** | moorechip |
| **Brand** | qti |
| **Architecture** | arm64 (with arm32 support) |
| **Platform** | Qualcomm Snapdragon (kona) |
| **Android Version** | 13 |
| **Security Patch** | 2024-07-05 |

## Building TWRP

### Option 1: GitHub Actions (Recommended)

The easiest way to build TWRP is using GitHub Actions:

1. Visit https://github.com/azwhikaru/Action-TWRP-Builder and fork the repository
2. Go to Actions and press "Run Workflow"
3. Fill in these options:

| Name                 | Description                                       | Value                                                      |
| -------------------- | ------------------------------------------------- | ------------------------------------------------------------ |
| `MANIFEST_URL`       | Source address (don't change)                    | https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git |
| `MANIFEST_BRANCH`    | Source branch (don't change)                     | twrp-12.1                                                    |
| `DEVICE_TREE_URL`    | Device address                                   | https://github.com/TWRP-for-Retroid-Pocket-5/android_device_moorechip_kona |
| `DEVICE_TREE_BRANCH` | Device branch                                     | android-13                                                |
| `DEVICE_PATH`        | Device location                                   | device/moorechip/kona                                            |
| `COMMON_TREE_URL`    | Common tree address                               | leave empty |
| `COMMON_PATH`        | Common tree location                              | leave empty                                   |
| `DEVICE_NAME`        | Model name                                        | kona                                                        |
| `MAKEFILE_NAME`      | Makefile name                                     | twrp_kona                                                   |
| `BUILD_TARGET`       | Build Target Partition (boot/recovery/vendorboot) | recovery                                                     |

### Option 2: Local Build

#### Prerequisites

1. Set up Android build environment
2. Initialize TWRP minimal manifest:
   ```bash
   repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
   ```
3. Sync the repository:
   ```bash
   repo sync
   ```

#### Clone Device Tree

```bash
git clone https://github.com/TWRP-for-Retroid-Pocket-5/android_device_moorechip_kona.git device/moorechip/kona
```

#### Build Commands

```bash
# Set up build environment
. build/envsetup.sh

# Choose target
lunch twrp_kona-eng

# Build TWRP
mka recoveryimage
```

## Installation
TBD

## Testing Status

Current testing status:

- [x] Touch input
- [x] Power button (to lock)
- [ ] Decryption
- [x] Micro SD/USB-OTG
- [x] MTP (kinda..?)
- [ ] NANDroid backups/restore
- [ ] ZIP file flashing
- [ ] IMG file flashing
- [ ] ADB sideload
- [x] Rebooting
- [x] Saving logs to Micro SD/USB OTG
- [ ] Flashing TWRP

## Credits

- **SebaUbuntu's TWRP device tree generator** - Initial device tree generation
- **TeamWin Recovery Project** - TWRP recovery
- **yarpiin** - [Xiaomi Mi 10 DT](https://github.com/yarpiin/twrp_device_xiaomi_umi/tree/android-12.1) (I used some of their code for this device tree)
## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

---

**Disclaimer**: This is an unofficial TWRP build. Use at your own risk. Always ensure you have proper backups before flashing any custom recovery.
