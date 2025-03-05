#!/bin/bash

# environment variables
BUILD_TOOLS_PATH="$HOME/Android/Sdk/build-tools/34.0.0"

apk_file="Youtube_plus.apk"
aligned_apk="Youtube_plus_aligned.apk"
signed_apk="Youtube_plus-signed.apk"
keystore="release.jks"

# Step 1: ZipAlign the APK
"$BUILD_TOOLS_PATH/zipalign" -v 4 "$apk_file" "$aligned_apk"

if [ $? -ne 0 ]; then
    echo "ZipAlign failed!"
    exit 1
fi

echo "APK aligned successfully: $aligned_apk"

# Step 2: Sign the APK
"$BUILD_TOOLS_PATH/apksigner" sign --ks "$keystore" --out "$signed_apk" "$aligned_apk"

if [ $? -ne 0 ]; then
    echo "Signing failed!"
    exit 1
fi

echo "APK signed successfully: $signed_apk"