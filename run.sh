#!/bin/sh

# 格式化內建的儲存區
USER=$(whoami)
HOME_DIR=/home/${USER}

# 執行
cd ${HOME_DIR}/stable-diffusion-webui
./webui.sh --listen --xformers
