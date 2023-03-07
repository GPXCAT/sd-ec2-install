#!/bin/sh

# 格式化內建的儲存區
USER=ubuntu
HOME_DIR=/data
SDW_DIR=${HOME_DIR}/stable-diffusion-webui

# 執行
cd ${SDW_DIR}
./webui.sh --listen --share --xformers --enable-insecure-extension-access
