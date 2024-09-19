# twrp_thor_5_pro

Just a dummy tree (extracted from thor 5's firmware), tried using `fastboot boot twrp.img`, boots to black screen for a minute, and `fastboot flash recovery twrp.img` and rebooting to recovery causes it to reboot to system and replace twrp with stock recovery.

*Update 1:* Booted into twrp recovery but touch doesn't work. Will try to find a fix

# TWRP for Zeblaze Thor 5 Pro

This is a Team Win Recovery Project (TWRP) device tree for the Zeblaze Thor 5 Pro smartwatch.

## Device Specifications

- **SoC**: MediaTek MT6739 (Quad-core 1.25 GHz Cortex-A53)
- **Memory**: 3GB RAM
- **Storage**: 32GB Internal Storage
- **Display**: 1.6 inch LTPS Crystal Display (320x320 pixels)
- **Battery**: 800mAh
- **OS**: Android 7.1.1

## Building TWRP

To build TWRP for the Zeblaze Thor 5 Pro:

1. Set up the TWRP build environment as per the [official TWRP instructions](https://twrp.me/dev/compile-twrp-from-source.html).

2. Clone this repository to `<TWRP_SOURCE>/device/zeblaze/thor5pro`

3. To build, use the following commands:
   ```
   . build/envsetup.sh
   lunch omni_thor5pro-eng
   mka recoveryimage
   ```

4. The built recovery image will be located in `out/target/product/thor5pro/`.

## Installing TWRP

**Warning**: This process may void your warranty. Proceed at your own risk.

1. Make sure your device is in bootloader mode.
2. Flash the recovery image using fastboot:
   ```
   fastboot flash recovery path/to/twrp.img
   ```
3. Reboot to recovery:
   ```
   fastboot reboot recovery
   ```

## Contributing

Contributions to this project are welcome. Please submit pull requests for any improvements or bug fixes.

## Disclaimer

- This project is not affiliated with Zeblaze or MediaTek.
- Use this recovery at your own risk. The developers are not responsible for any damage to your device.

## Credits

- Team Win Recovery Project (TWRP)
