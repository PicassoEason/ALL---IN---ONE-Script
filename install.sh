#!/bin/bash
echo "update all plugin AND SYStem"
sudo apt-get update
# 套件清單，每個套件使用一行
packages=(
    apache2
    php
    mysql-server
    nodejs
    firefox
    blender
    libreoffice
    curl
    wget
    filezilla
    steam
)
#PACKAGES[@] 是一個陣列變數，它包含了 PACKAGES 陣列中的所有元素。
for package in "${packages[@]}"
do
 if dpkg -s $package >/dev/null 2>&1; then #dpkg -s 是否重複安裝
        echo "▲ $package 已經安裝了 ▲"
  else
        sudo apt-get install -y $package
    fi
done

# 結束
echo "所有套件已安裝完成"
exit 0