#!/bin/sh

# 系統變數
USER=ubuntu
HOME_DIR=/data
SDW_DIR=${HOME_DIR}/stable-diffusion-webui
ARCH=$(arch)
DRIVER_BASE_URL=https://us.download.nvidia.com/tesla
DRIVER_VERSION=525.85.12

# 內建的nvme1
sudo file -s /dev/nvme1n1
sudo mkfs -t xfs /dev/nvme1n1
sudo mkdir /data
sudo mount /dev/nvme1n1 /data
sudo chmod 777 /data
echo '/dev/nvme1n1 /data ext4 discard,defaults,nofail 0 2' | sudo tee -a /etc/fstab

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

# 同步安裝模型檔
bash <(wget -qO- https://raw.githubusercontent.com/GPXCAT/sd-ec2-install/main/download_models.sh) &

# 安裝外掛模組
cd ${SDW_DIR}/extensions
git clone https://github.com/kohya-ss/sd-webui-additional-networks.git
git clone https://github.com/Mikubill/sd-webui-controlnet.git
git clone https://github.com/civitai/sd_civitai_extension.git
git clone https://github.com/jexom/sd-webui-depth-lib.git

# 執行
cd ${SDW_DIR}
./webui.sh --listen --xformers
