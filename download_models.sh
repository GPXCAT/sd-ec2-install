#!/bin/sh

# 系統變數
USER=$(whoami)
SDW_DIR=${HOME}/stable-diffusion-webui

# 安裝模型[CHECKPOINT TRAINED]
MODEL_CHECKPOINT_DIR=${SDW_DIR}/models/Stable-diffusion
mkdir -p $MODEL_CHECKPOINT_DIR
# [AbyssOrangeMix3] https://civitai.com/models/9942
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11814 -d ${MODEL_CHECKPOINT_DIR} -o AOM3.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11813 -d ${MODEL_CHECKPOINT_DIR} -o AOM3A1.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11812 -d ${MODEL_CHECKPOINT_DIR} -o AOM3A2.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11811 -d ${MODEL_CHECKPOINT_DIR} -o AOM3A3.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/17233 -d ${MODEL_CHECKPOINT_DIR} -o AOM3A1B.safetensors
# [Deliberate] https://civitai.com/models/4823
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/15236 -d ${MODEL_CHECKPOINT_DIR} -o deliberate_v2.safetensors
# [RealDosMix] https://civitai.com/models/6925
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/8137 -d ${MODEL_CHECKPOINT_DIR} -o realdosmix_.safetensors
# [ChilloutMix] https://civitai.com/models/6424
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/11745 -d ${MODEL_CHECKPOINT_DIR} -o chilloutmix_NiPrunedFp32Fix.safetensors
# [GTA5 Artwork Diffusion] https://civitai.com/models/1309
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/1393 -d ${MODEL_CHECKPOINT_DIR} -o gta5ArtworkDiffusion_v1.ckpt
# [MeinaMix] https://civitai.com/models/7240
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/20322 -d ${MODEL_CHECKPOINT_DIR} -o meinamix_meinaV8.safetensors
# [Grapefruit (hentai model)] https://civitai.com/models/2583
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/16619 -d ${MODEL_CHECKPOINT_DIR} -o grapefruitHentaiModel_grapefruitv41.safetensors
# [Counterfeit-V2.5] https://civitai.com/models/4468
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/7425 -d ${MODEL_CHECKPOINT_DIR} -o CounterfeitV25_25.safetensors
# [Realistic Vision V1.3 - Fantasy.ai] https://civitai.com/models/4201
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/6987 -d ${MODEL_CHECKPOINT_DIR} -o realisticVisionV13_v13.safetensors

# 安裝模型[LORA]
MODEL_LORA_DIR=${SDW_DIR}/models/Lora
mkdir -p $MODEL_LORA_DIR
# [墨心 MoXin] https://civitai.com/models/12597
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/14856 -d ${MODEL_LORA_DIR} -o Moxin_10.safetensors
# [Makima (Chainsaw Man) LoRA] https://civitai.com/models/5373
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/6244 -d ${MODEL_LORA_DIR} -o makimaChainsawMan_offset.safetensors
# [2B (NieR:Automata) LoRA / YorHA edition] https://civitai.com/models/5200
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/6031 -d ${MODEL_LORA_DIR} -o 2bNierAutomataLora_v2b.safetensors
# [ChilloutMixss] https://civitai.com/models/10850
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/12876 -d ${MODEL_LORA_DIR} -o chilloutmixss_xss10.safetensors
# [ChilloutMix] https://huggingface.co/AnonPerson/ChilloutMix
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/AnonPerson/ChilloutMix/resolve/main/Japanese-doll-likeness.safetensors -d ${MODEL_LORA_DIR} -o Japanese-doll-likeness.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/AnonPerson/ChilloutMix/resolve/main/Korean-doll-likeness.safetensors -d ${MODEL_LORA_DIR} -o Korean-doll-likeness.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/AnonPerson/ChilloutMix/resolve/main/Taiwan-doll-likeness.safetensors -d ${MODEL_LORA_DIR} -o Taiwan-doll-likeness.safetensors
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/AnonPerson/ChilloutMix/resolve/main/ulzzang-6500.pt -d ${MODEL_LORA_DIR} -o ulzzang-6500.pt
# [Arknights-Texas the Omertosa] https://civitai.com/models/6779
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/7974 -d ${MODEL_LORA_DIR} -o arknightsTexasThe_v10.safetensors
# [RainMix] https://civitai.com/models/16564
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://civitai.com/api/download/models/19556 -d ${MODEL_LORA_DIR} -o rainmix_10.ckpt

# 安裝模型[ControlNet]
MODEL_CONTROLNET_DIR=${SDW_DIR}/models/ControlNet
mkdir -p $MODEL_CONTROLNET_DIR
# [ControlNet] https://huggingface.co/lllyasviel/ControlNet
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_canny.pth -d ${MODEL_CONTROLNET_DIR} -o control_sd15_canny.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_depth.pth -d ${MODEL_CONTROLNET_DIR} -o control_sd15_depth.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_hed.pth -d ${MODEL_CONTROLNET_DIR} -o control_sd15_hed.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_mlsd.pth -d ${MODEL_CONTROLNET_DIR} -o control_sd15_mlsd.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_normal.pth -d ${MODEL_CONTROLNET_DIR} -o control_sd15_normal.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_openpose.pth -d ${MODEL_CONTROLNET_DIR} -o control_sd15_openpose.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_scribble.pth -d ${MODEL_CONTROLNET_DIR} -o control_sd15_scribble.pth
aria2c --console-log-level=error -c -x 16 -s 16 -k 1M https://huggingface.co/lllyasviel/ControlNet/resolve/main/models/control_sd15_seg.pth -d ${MODEL_CONTROLNET_DIR} -o control_sd15_seg.pth

echo "下載完成"
