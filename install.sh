#!/bin/sh

# 格式化內建的儲存區
USER=$(whoami)
HOME_DIR=/home/${USER}
ARCH=$(arch)
DRIVER_BASE_URL=https://us.download.nvidia.com/tesla
DRIVER_VERSION=525.85.12

# 安裝系統套件
sudo apt update
sudo apt install -y wget curl aria2 \
                    make gcc g++ \
                    python3.10-venv python3-pip

# 安裝顯示卡驅動
# https://www.nvidia.com/Download/Find.aspx
cd /tmp
curl -fSsl -O $DRIVER_BASE_URL/$DRIVER_VERSION/NVIDIA-Linux-$ARCH-$DRIVER_VERSION.run
sudo sh NVIDIA-Linux-$ARCH-$DRIVER_VERSION.run -s

# 安裝stable-diffusion-webui
cd ${HOME_DIR}
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

# 安裝外掛模組
cd ${HOME_DIR}/stable-diffusion-webui/extensions
git clone https://github.com/kohya-ss/sd-webui-additional-networks.git
git clone https://github.com/Mikubill/sd-webui-controlnet.git
git clone https://github.com/civitai/sd_civitai_extension.git
git clone https://github.com/jexom/sd-webui-depth-lib.git

# 執行
cd ${HOME_DIR}/stable-diffusion-webui
./webui.sh --listen --xformers
