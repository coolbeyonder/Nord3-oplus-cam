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
    echo "Make sure you are in the correct directory structure:"
    echo "  vendor/oneplus/nord3/proprietary/camera"
    exit 1
fi

. "$MY_DIR"/../../../../tools/extract-utils/extract_utils.sh

# Section 1: Extract the files
# This uses the proprietary-files.txt list to know what to grab
extract "$MY_DIR"/proprietary-files.txt "$SRC" "$SECTION"

# Section 2: Generate the Makefiles
"$MY_DIR"/setup-makefiles.sh
