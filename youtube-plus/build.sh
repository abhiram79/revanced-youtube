#!/bin/bash

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

echo "Done"