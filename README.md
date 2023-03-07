# EC2 Install Stable Diffusion web UI Script
這是我自己使用的安裝 Script

## Launch EC2 SPOT instances
```bash
REGION=us-east-1
INSTANCE_TYPE=g4dn.xlarge
AMI_IMAGE=ami-0557a15b87f6559cf
EBS_GB_SIZE=12
KEY_PAIR_NAME=stable-diffusion-webui
SECURITY_GROUP_ID=sg-0f90be5d16639339e

aws ec2 run-instances \
    --count 1 \
    --instance-type ${INSTANCE_TYPE} \
    --image-id ${AMI_IMAGE} \
    --key-name ${KEY_PAIR_NAME} \
    --security-group-ids ${SECURITY_GROUP_ID} \
    --instance-market-options '{"MarketType":"spot","SpotOptions":{"InstanceInterruptionBehavior":"terminate","MaxPrice":"0.2","SpotInstanceType":"one-time"}}' \
    --block-device-mappings '{"DeviceName":"/dev/sda1","Ebs":{"VolumeSize":'${EBS_GB_SIZE}',"VolumeType":"gp3"}}' \
    --region ${REGION}
```

## 安裝 Nvidia Driver 與 Stable Diffusion web UI
```bash
bash <(wget -qO- https://raw.githubusercontent.com/GPXCAT/sd-ec2-install/main/install.sh)
```

## 下載 Models
```bash
bash <(wget -qO- https://raw.githubusercontent.com/GPXCAT/sd-ec2-install/main/download_models.sh)
```
