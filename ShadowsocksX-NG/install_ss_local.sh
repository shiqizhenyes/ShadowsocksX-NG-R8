#!/bin/bash

#  install_ss_local.sh
#  ShadowsocksX-NG
#
#  Created by 邱宇舟 on 16/6/6.
#  Copyright © 2016年 qiuyuzhou. All rights reserved.


cd "$(dirname "${BASH_SOURCE[0]}")"
originPath=`pwd`
sysOS=`uname -m`
if [ $sysOS == 'x86_64' ];then
    # echo "x86_64"
    cellarDirPath="/usr/local/Cellar/"
    if [ ! -d $cellarDirPath ]; then
        sudo mkdir cellarDirPath
    fi
    mbedtlsDirPath="/usr/local/Cellar/mbedtls@2"
    mbedtlsVersion="2.28.0"

    if [ ! -d $mbedtlsDirPath ]; then
        echo "cp mbedtls"
        mkdir -p $mbedtlsDirPath"/$mbedtlsVersion/"
        cp -r mbedtls@2/$mbedtlsVersion/x86_64/ /usr/local/Cellar/mbedtls@2/$mbedtlsVersion/
    fi

    libsodiumDirPath="/usr/local/Cellar/libsodium"
    libsodiumVersion="1.0.18_1"

    if [ ! -d $libsodiumDirPath ]; then
        echo "cp mbedtls"
        mkdir -p $libsodiumDirPath"/$libsodiumVersion/"
        cp -r libsodium/$libsodiumVersion/x86_64/ /usr/local/Cellar/libsodium/$libsodiumVersion/
    fi
else
    echo "arm64"
fi

cd /usr/local/opt 
# pwd
ln -sf ../Cellar/mbedtls@2/$mbedtlsVersion mbedtls@2
ln -sf ../Cellar/libsodium/$libsodiumVersion libsodium

cd /usr/local/include
ln -sf ../Cellar/mbedtls@2/$mbedtlsVersion/include/mbedtls mbedtls
ln -sf ../Cellar/mbedtls@2/$mbedtlsVersion/include/psa psa

ln -sf ../Cellar/libsodium/$libsodiumVersion/include/sodium sodium
ln -sf ../Cellar/libsodium/$libsodiumVersion/include/sodium.h sodium.h

cd /usr/local/lib

for file in $mbedtlsDirPath/$mbedtlsVersion/lib/*
do
    if [ ! -d $file ];then
        echo "链接 $(basename $file)"
        ln -sf ../Cellar/mbedtls@2/$mbedtlsVersion/lib/$(basename $file) $(basename $file)
    fi
done

# pwd
for file in $libsodiumDirPath/$libsodiumVersion/lib/*
do
    if [ ! -d $file ];then
        echo "链接 $(basename $file)"
        ln -sf ../Cellar/libsodium/$libsodiumVersion/lib/$(basename $file) $(basename $file)
    fi
done

cd /usr/local/bin
# # pwd
for file in $mbedtlsDirPath/$mbedtlsVersion/bin/*
do
    if [ ! -d $file ];then
        echo "链接 $(basename $file)"
        ln -sf ../Cellar/mbedtls@2/$mbedtlsVersion/bin/$(basename $file) $(basename $file)
    fi
done

cd $originPath
ssLocalVersion=3.3.5
rm -rf $HOME/Library/Application\ Support/ShadowsocksX-NG-R8/ss-local*
rm -rf $HOME/Library/Application\ Support/ShadowsocksX-NG-R8/libcrypto*
mkdir -p "$HOME/Library/Application Support/ShadowsocksX-NG-R8/ss-local-$ssLocalVersion"
cp -r ss-local-$ssLocalVersion/ "$HOME/Library/Application Support/ShadowsocksX-NG-R8/ss-local-$ssLocalVersion/"
ln -s "$HOME/Library/Application Support/ShadowsocksX-NG-R8/ss-local-$ssLocalVersion/ss-local" "$HOME/Library/Application Support/ShadowsocksX-NG-R8/ss-local"

echo done
