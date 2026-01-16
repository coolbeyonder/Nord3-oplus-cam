# OnePlus Nord 3 (MT6983) Camera Vendor Blobs

## Info
* **Device:** OnePlus Nord 3 5G
* **SoC:** MediaTek Dimensity 9000 (MT6983)
* **Status:** Complete Vendor Tree (LiWhy Style)
* **File Count:** 444 Files

## Usage
Clone this repository into `vendor/oneplus/nord3/proprietary/camera`.

In your `device.mk`:
```makefile
$(call inherit-product-if-exists, vendor/oneplus/nord3/proprietary/camera/camera-vendor.mk)
```

In your `BoardConfig.mk`:
```makefile
-include vendor/oneplus/nord3/proprietary/camera/BoardConfigVendor.mk
```


