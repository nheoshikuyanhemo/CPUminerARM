#!/bin/bash

echo "🚀 Installing cpuminer-opt for Android ARM64..."

# Update dan install tool
apt update -y && apt install -y wget tar

# Buat folder install
mkdir -p $HOME/.local/bin

# Download prebuilt
wget https://github.com/nheoshikuyanhemo/CPUminerARM/raw/main/cpuminer-opt-arm64.tar.gz -O cpuminer.tar.gz

# Ekstrak dan pasang
tar -xzf cpuminer.tar.gz
mv cpuminer-opt $HOME/.local/bin/cpuminer-opt
chmod +x $HOME/.local/bin/cpuminer-opt

# Tambahkan PATH jika belum
if ! grep -q ".local/bin" $HOME/.bashrc; then
    echo 'export PATH=$HOME/.local/bin:$PATH' >> $HOME/.bashrc
    source $HOME/.bashrc
fi

echo "✅ Install complete!"
echo "🧠 Jalankan dengan: cpuminer-opt -a yespower -o stratum+tcp://pool -u wallet"
