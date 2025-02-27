#!/bin/bash

# Repository URL
REPO="https://raw.githubusercontent.com/Uni-store/instalasi/main/"

# Download menu.zip
wget -q "${REPO}menu/menu.zip" -O menu.zip

# Ekstrak file menu.zip dengan password
7z x -p@Uni-store menu.zip

# Beri izin eksekusi pada semua file dalam folder menu
chmod +x menu/*

# Pindahkan file ke /usr/local/sbin
mv menu/* /usr/local/sbin

# Bersihkan file yang tidak diperlukan
rm -rf menu menu.zip *.sh*
rm -rf /usr/local/sbin/*~
rm -rf /usr/local/sbin/gz*
rm -rf /usr/local/sbin/*.bak

echo "Update menu selesai!"
