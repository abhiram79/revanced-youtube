#!/bin/bash

# Prompt for the decompiled APK directory
target_dir="yt-plus"
output_apk="Youtube_plus.apk"

# Recompile the APK
java -jar apktool.jar b "$target_dir" -o "$output_apk"

echo "APK recompiled as $output_apk"

