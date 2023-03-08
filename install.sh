#!/bin/sh

# 系統變數
USER=$(whoami)
SDW_DIR=${HOME}/stable-diffusion-webui

# 安裝系統套件
sudo apt update
sudo apt install -y wget git aria2 \
                    build-essential python3-venv python3-pip

# 安裝顯示卡驅動
# https://www.nvidia.com/Download/Find.aspx
if [ ! -f "/.cuda_installed" ]
then
    wget https://developer.download.nvidia.com/compute/cuda/12.1.0/local_installers/cuda_12.1.0_530.30.02_linux.run -O /tmp/cuda_12.1.0_530.30.02_linux.run
    sudo sh /tmp/cuda_12.1.0_530.30.02_linux.run --silent
    rm /tmp/cuda_12.1.0_530.30.02_linux.run
    sudo touch /.cuda_installed
fi

# 安裝stable-diffusion-webui
cd ${HOME}
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

# 安裝外掛模組
cd ${SDW_DIR}/extensions
git clone https://github.com/kohya-ss/sd-webui-additional-networks.git
git clone https://github.com/Mikubill/sd-webui-controlnet.git
git clone https://github.com/civitai/sd_civitai_extension.git
git clone https://github.com/jexom/sd-webui-depth-lib.git
git clone https://github.com/camenduru/sd-civitai-browser.git
git clone https://github.com/camenduru/stable-diffusion-webui-images-browser.git
git clone https://github.com/camenduru/deforum-for-automatic1111-webui.git

# 執行
cd ${SDW_DIR}
./webui.sh --listen --share --xformers --enable-insecure-extension-access
