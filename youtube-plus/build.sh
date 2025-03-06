#!/bin/bash

# Prompt for APK URL and directory name
read -p "Enter APK URL: " target_apk
target_dir="yt-plus"

# Download the APK file
wget -O ytplus.apk "$target_apk"

# Decompile the APK using apktool
java -jar apktool.jar d ytplus.apk -o "$target_dir"

echo "APK decompiled to $target_dir"

# remove original files
rm -rf yt-plus/res/values/strings.xml
rm -rf yt-plus/res/xml

# Get modified files
wget 
unzip patch.zip

# add modified files
cp patch/strings.xml yt-plus/res/values/
cp -r patch/xml yt-plus/res/

# Prompt for the decompiled APK directory
target_dir="yt-plus"
output_apk="Youtube_plus.apk"

# Recompile the APK
java -jar apktool.jar b "$target_dir" -o "$output_apk"

echo "APK recompiled as $output_apk"
