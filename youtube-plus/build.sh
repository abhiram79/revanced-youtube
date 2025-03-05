#!/bin/bash


# download apktool 
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.11.0.jar

mv apktool_2.11.0.jar apktool.jar


chmod +x *

bash decompile.sh 
echo "Decompiled sucessfully"

bash patch.sh
echo "Patched sucessfully"

bash recompile.sh
echo "Apk compiled sucessfully"

bash sign.sh
echo "Apk signed sucessfully"

# clean
rm -rf yt-plus
rm -rf patch.zip
rm -rf patch
rm -rf apktool.jar

echo "Done"