#!/bin/bash

Link="https://index.rnxyr.workers.dev/merlin_id_global_images_V12.0.1.0.QJOIDXM_20200807.0000.00_10.0_global_b1a2750067.tgz"
FileName="$(pwd)/miui_MERLINGlobal_V12.0.1.0.RJOMIXM_9bf35d329b_11.0.zip"
export DEBIAN_FRONTEND=noninteractive
apt-get -y update && apt-get -y upgrade && apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3 python3-pip brotli liblz4-tool axel gawk aria2 detox wget
pip3 install backports.lzma protobuf pycrypto docopt

CurrentFolder=$(pwd)

if [ ! -z "$Link" ];then
    wget "$Link" -O "$FileName"
    bash dumpyara.sh "$FileName" "$GIT_SECRET" "$BOT_TOKEN"
fi

cd "$CurrentFolder" && rm -rf "$CurrentFolder/*"
