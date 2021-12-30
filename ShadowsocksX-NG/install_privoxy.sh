#!/bin/sh

#  install_privoxy.sh
#  ShadowsocksX-NG
#
#  Created by 王晨 on 16/10/7.
#  Copyright © 2016年 zhfish. All rights reserved.

cd "$(dirname "${BASH_SOURCE[0]}")"
privoxyVersion=3.0.33
rm -rf $HOME/Library/Application\ Support/ShadowsocksX-NG-R8/privoxy*
rm -rf $HOME/Library/Application\ Support/ShadowsocksX-NG-R8/libpcre*
mkdir -p "$HOME/Library/Application Support/ShadowsocksX-NG-R8/privoxy-$privoxyVersion"
cp -f privoxy "$HOME/Library/Application Support/ShadowsocksX-NG-R8/privoxy-$privoxyVersion/"
rm -f "$HOME/Library/Application Support/ShadowsocksX-NG-R8/privoxy"
ln -s "$HOME/Library/Application Support/ShadowsocksX-NG-R8/privoxy-$privoxyVersion/privoxy" "$HOME/Library/Application Support/ShadowsocksX-NG-R8/privoxy"
echo done
