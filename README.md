# CPUminerARM (Termux-ready)

This is a precompiled version of cpuminer-opt for ARM64 (aarch64), compatible with Termux via proot-distro (Ubuntu/Debian).

## Features
- Optimized for ARM64 (Termux Linux via proot)
- Supports various algorithms (e.g., `power2b`, `yespower`, `sha256d`)
- Easy setup script

## How to Use

# CPUminer for ARM (Termux Compatible)

Optimized CPU miner for ARM64 devices running Ubuntu in Termux (Proot-distro).

## 📦 Installation

```bash
pkg install proot-distro -y
proot-distro install ubuntu
proot-distro login ubuntu
```
### in Ubuntu termux
```
apt update && apt install wget tar git -y
git clone https://github.com/nheoshikuyanhemo/CPUminerARM
cd CPUminerARM
chmod +x install.sh start.sh
./install.sh
```
### edit start.sh and seting your wallet & pool 
```
nano start.sh
```
```
#!/bin/bash
./cpuminer -a power2b \
  -o stratum+tcps://stratum-asia.rplant.xyz:17022 \
  -u MoY4XMVCEr6jGG9KPktas73kPoo2FDWfgS.Eixa \
  -t 7
```
```
./start.sh
```

### Install dependencies

```bash
sudo apt update && sudo apt install -y wget curl tar
chmod +x install.sh
./install.sh

chmod +x start.sh
./start.sh

### Example Mining Pool
./cpuminer -a power2b -o stratum+tcps://stratum-asia.rplant.xyz:17022 -u MoY4XMVCEr6jGG9KPktas73kPoo2FDWfgS.Eixa -t 7


#### Credits

#### Compiled and packaged by 0xEixa

---

## 3. ✍️ Buat `install.sh` dan `start.sh`

```bash
nano install.sh

#!/bin/bash
chmod +x cpuminer
echo "✅ cpuminer binary permission set. Ready to run."

nano start.sh

#!/bin/bash
./cpuminer -a power2b \
  -o stratum+tcps://stratum-asia.rplant.xyz:17022 \
  -u MoY4XMVCEr6jGG9KPktas73kPoo2FDWfgS.Eixa \
  -t 7

#Lalu:

chmod +x install.sh start.sh
