#!/bin/bash

Link="https://gcc-drive.zyc-files.workers.dev/1:/miui_VAYUEEAGlobal_V12.5.1.0.RJUEUXM_8f1ef5258e_11.0.zip"
FileName="$(pwd)/memeui.zip"
export DEBIAN_FRONTEND=noninteractive
apt-get -y update && apt-get -y upgrade && apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3 python3-pip brotli liblz4-tool axel gawk aria2 detox wget
pip3 install backports.lzma protobuf pycrypto docopt

CurrentFolder=$(pwd)

if [ ! -z "$Link" ];then
    wget "$Link" -O "$FileName"
    bash dumpyara.sh "$FileName" "$GIT_SECRET" "$BOT_TOKEN"
fi

cd "$CurrentFolder" && rm -rf "$CurrentFolder/*"