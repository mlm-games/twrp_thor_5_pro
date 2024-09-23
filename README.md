# My notes and past info.

Tried using `fastboot boot twrp.img`, boots to black screen for a minute, and `fastboot flash recovery twrp.img` and rebooting to recovery causes it to reboot to system and replace twrp with stock recovery.

**Update 1: Touch works now**

## Unlocking bootloader

Does not work like normal since it has no vol + button being simulated (the top button acts as the power button, and the bottom button acts as the vol - button for rebooting stuff), so if u do `fastboot flashing unlock` in bootloader, it will ask u to tap the vol + button...

Tried some stuff, and in the end mtkclient on liveusb worked (mtkclient gui -> unlock bootloader). It doesnt clear any data but i would advise to backup before doing this incase something goes wrong.

Then flashed the magisk patched [boot.img](https://github.com/mlm-games/twrp_thor_5_pro/releases/tag/v1.1) for 2019-12 firmware (`fastboot flash boot patched-boot.img`) and then flashed twrp using the official twrp app (or u could rename recovery-from-boot.p to .bak). If u are on older firmware. Just use magisk 27.0 to patch boot.img


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
- [Openmatchproject](https://xdaforums.com/t/twrp-roms-openwatch-project-kingwear-zeblaze-lemfo-diggro-finow-microwear.3816674/)
