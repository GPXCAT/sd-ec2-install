#!/bin/sh

# 系統變數
USER=$(whoami)
SDW_DIR=${HOME}/stable-diffusion-webui

# 安裝模型[CHECKPOINT TRAINED]
MODEL_CHECKPOINT_DIR=${SDW_DIR}/models/Stable-diffusion
mkdir -p $MODEL_CHECKPOINT_DIR
# [AbyssOrangeMix3] https://civitai.com/models/9942
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11814 -d "${MODEL_CHECKPOINT_DIR}/AbyssOrangeMix3"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11813 -d "${MODEL_CHECKPOINT_DIR}/AbyssOrangeMix3"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11812 -d "${MODEL_CHECKPOINT_DIR}/AbyssOrangeMix3"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11811 -d "${MODEL_CHECKPOINT_DIR}/AbyssOrangeMix3"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/17233 -d "${MODEL_CHECKPOINT_DIR}/AbyssOrangeMix3"
# [Deliberate] https://civitai.com/models/4823
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/5533 -d "${MODEL_CHECKPOINT_DIR}/Deliberate"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/5616 -d "${MODEL_CHECKPOINT_DIR}/Deliberate"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/15236 -d "${MODEL_CHECKPOINT_DIR}/Deliberate"
# [RealDosMix] https://civitai.com/models/6925
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/8137 -d "${MODEL_CHECKPOINT_DIR}/RealDosMix"
# [ChilloutMix] https://civitai.com/models/6424
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/7543 -d "${MODEL_CHECKPOINT_DIR}/ChilloutMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/8958 -d "${MODEL_CHECKPOINT_DIR}/ChilloutMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/9474 -d "${MODEL_CHECKPOINT_DIR}/ChilloutMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/9475 -d "${MODEL_CHECKPOINT_DIR}/ChilloutMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11732 -d "${MODEL_CHECKPOINT_DIR}/ChilloutMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11745 -d "${MODEL_CHECKPOINT_DIR}/ChilloutMix"
# [GTA5 Artwork Diffusion] https://civitai.com/models/1309
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/1393 -d "${MODEL_CHECKPOINT_DIR}/GTA5 Artwork Diffusion"
# [MeinaMix] https://civitai.com/models/7240
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/8510 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/8630 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/9119 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/10770 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/10320 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11187 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/12746 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/12745 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/13435 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/13434 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/15306 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/16925 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/20322 -d "${MODEL_CHECKPOINT_DIR}/MeinaMix"
# [Hassaku (hentai model)] https://civitai.com/models/2583
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/29539 -d "${MODEL_CHECKPOINT_DIR}/Hassaku"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/30191 -d "${MODEL_CHECKPOINT_DIR}/Hassaku"
# [Counterfeit] https://civitai.com/models/4468
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/7425 -d "${MODEL_CHECKPOINT_DIR}/Counterfeit"
# [Realistic Vision] https://civitai.com/models/4201
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/5196 -d "${MODEL_CHECKPOINT_DIR}/Realistic Vision"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/7935 -d "${MODEL_CHECKPOINT_DIR}/Realistic Vision"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/6987 -d "${MODEL_CHECKPOINT_DIR}/Realistic Vision"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/29461 -d "${MODEL_CHECKPOINT_DIR}/Realistic Vision"
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/29460 -d "${MODEL_CHECKPOINT_DIR}/Realistic Vision"
# [RainMix] https://civitai.com/models/16564
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/19556 -d "${MODEL_CHECKPOINT_DIR}/RainMix"
# [BeautyProMix] https://civitai.com/models/16599
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/19597 -d "${MODEL_CHECKPOINT_DIR}/BeautyProMix"

# 安裝模型[LORA]
MODEL_LORA_DIR=${SDW_DIR}/models/Lora
mkdir -p $MODEL_LORA_DIR
# [墨心 MoXin] https://civitai.com/models/12597
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/14856 -d ${MODEL_LORA_DIR}
# [Makima (Chainsaw Man) LoRA] https://civitai.com/models/5373
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/6244 -d ${MODEL_LORA_DIR}
# [2B (NieR:Automata) LoRA / YorHA edition] https://civitai.com/models/5200
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/6031 -d ${MODEL_LORA_DIR}
# [ChilloutMixss] https://civitai.com/models/10850
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/12876 -d ${MODEL_LORA_DIR}
# [ChilloutMix] https://huggingface.co/AnonPerson/ChilloutMix
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/AnonPerson/ChilloutMix/resolve/main/Japanese-doll-likeness.safetensors -d ${MODEL_LORA_DIR}
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/AnonPerson/ChilloutMix/resolve/main/Korean-doll-likeness.safetensors -d ${MODEL_LORA_DIR}
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/AnonPerson/ChilloutMix/resolve/main/Taiwan-doll-likeness.safetensors -d ${MODEL_LORA_DIR}
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/AnonPerson/ChilloutMix/resolve/main/ulzzang-6500.pt -d ${MODEL_LORA_DIR}
# [Arknights-Texas the Omertosa] https://civitai.com/models/6779
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/7974 -d ${MODEL_LORA_DIR}

# 安裝模型[VAE]
MODEL_VAE_DIR=${SDW_DIR}/models/VAE
mkdir -p $MODEL_VAE_DIR
# [VAE] https://huggingface.co/stabilityai/sd-vae-ft-mse-original
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors -d ${MODEL_VAE_DIR}

# 安裝模型[ControlNet]
MODEL_CONTROLNET_DIR=${SDW_DIR}/models/ControlNet
mkdir -p $MODEL_CONTROLNET_DIR
# [ControlNet] https://huggingface.co/lllyasviel/ControlNet
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_canny.pth -d ${MODEL_CONTROLNET_DIR}
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_depth.pth -d ${MODEL_CONTROLNET_DIR}
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_hed.pth -d ${MODEL_CONTROLNET_DIR}
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_mlsd.pth -d ${MODEL_CONTROLNET_DIR}
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_normal.pth -d ${MODEL_CONTROLNET_DIR}
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_openpose.pth -d ${MODEL_CONTROLNET_DIR}
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_scribble.pth -d ${MODEL_CONTROLNET_DIR}
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_seg.pth -d ${MODEL_CONTROLNET_DIR}

echo "下載完成"
