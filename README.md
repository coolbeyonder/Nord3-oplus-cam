# OnePlus Nord 3 (MT6983) Camera Vendor Blobs

## Info
* **Device:** OnePlus Nord 3 5G
* **SoC:** MediaTek Dimensity 9000 (MT6983)
* **Status:** Complete Cam Repo (Ready for Test)
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

##  How to Use in Your ROM Build

To include this camera in your build, add the following to your local manifest (e.g., `.repo/local_manifests/nord3_camera.xml`):

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
    <project path="vendor/oneplus/nord3/proprietary/camera"
             name="CoolBeyonder/Nord3-oplus-cam"
             remote="github"
             revision="main" />
</manifest>
```

Then sync your repo using this command:

```bash
repo sync -c --force-sync --no-clone-bundle --no-tags
```
