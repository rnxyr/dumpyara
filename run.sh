#!/bin/bash

Link="https://shared.zyc-files.workers.dev/0:/miui_BEGONIAIDGlobal_V12.0.1.0.QGGIDXM_d0e8262216_10.0.zip"
FileName="miui_BEGONIAIDGlobal_V12.0.1.0.QGGIDXM_d0e8262216_10.0.zip"
apt-get -y update && apt-get -y upgrade && apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3 python3-pip brotli liblz4-tool axel gawk aria2 detox wget
pip3 install backports.lzma protobuf pycrypto docopt
wget "$Link" -O "$FileName"
bash dumpyara.sh "$FileName" "$GIT_SECRET" "$BOT_TOKEN"