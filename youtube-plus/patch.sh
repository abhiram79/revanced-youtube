#!/bin/bash

# remove original files
rm -rf yt-plus/res/values/strings.xml
rm -rf yt-plus/res/xml

# Get modified files
wget 
unzip patch.zip

# add modified files
cp patch/strings.xml yt-plus/res/values/
cp -r patch/xml yt-plus/res/

