#!/bin/bash

# Prompt for APK URL and directory name
read -p "Enter APK URL: " target_apk
target_dir="yt-plus"

# Download the APK file
wget -O ytplus.apk "$target_apk"

# Decompile the APK using apktool
java -jar apktool.jar d ytplus.apk -o "$target_dir"

echo "APK decompiled to $target_dir"
