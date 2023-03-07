#!/bin/sh

# 系統變數
USER=$(whoami)
SDW_DIR=${HOME}/stable-diffusion-webui

# 執行
cd ${SDW_DIR}
./webui.sh --listen --share --xformers --enable-insecure-extension-access
