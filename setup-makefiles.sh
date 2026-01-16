#!/bin/bash
#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=nord3
VENDOR=oneplus

# Load extract_utils and setup_vendor
MY_DIR="${BASH_SOURCE%/*}"
if [ ! -d "$MY_DIR"/../../../../tools/extract-utils ]; then
    echo "error: tools/extract-utils not found."
    exit 1
fi

. "$MY_DIR"/../../../../tools/extract-utils/extract_utils.sh

# Initialize the helper
setup_vendor "$DEVICE" "$VENDOR" "$MY_DIR"

# Write the common Makefiles
write_headers "nord3_camera"

# Write the Android.bp automatically based on the files
write_makefiles "$MY_DIR"/proprietary-files.txt

# Finish
write_footers
