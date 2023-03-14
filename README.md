# EC2 Install Stable Diffusion web UI Script
這是我自己使用的安裝 Script

## Launch EC2 SPOT instances
### https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/run-instances.html
```bash
REGION=us-east-1
INSTANCE_TYPE=g4dn.xlarge
AMI_IMAGE=ami-0557a15b87f6559cf
EBS_GB_SIZE=100
KEY_PAIR_NAME=stable-diffusion-webui
SECURITY_GROUP_ID=sg-0f90be5d16639339e
MAX_PRICE=0.17

aws ec2 run-instances \
    --count 1 \
    --instance-type ${INSTANCE_TYPE} \
    --image-id ${AMI_IMAGE} \
    --key-name ${KEY_PAIR_NAME} \
    --security-group-ids ${SECURITY_GROUP_ID} \
    --instance-market-options '{
        "MarketType": "spot",
        "SpotOptions": {
            "MaxPrice": "'${MAX_PRICE}'",
            "SpotInstanceType": "persistent",
            "InstanceInterruptionBehavior": "stop"
        }
    }' \
    --block-device-mappings '{
        "DeviceName": "/dev/sda1",
        "Ebs": {
            "VolumeSize": '${EBS_GB_SIZE}',
            "VolumeType": "gp3"
        }
    }' \
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

## 透過 Supervisor
### 安裝
```bash
sudo apt update
sudo apt install -y supervisor
```

### 寫入設定
```bash
echo '[program:stable-diffusion-webui]
directory=/home/ubuntu/stable-diffusion-webui
command=/home/ubuntu/stable-diffusion-webui/webui.sh --listen --share --xformers --enable-insecure-extension-access
autostart=true
autorestart=true
user=ubuntu
redirect_stderr=true
stdout_logfile=/var/log/supervisor/stable-diffusion-webui.log
' | sudo tee /etc/supervisor/conf.d/stable-diffusion-webui.conf
```

### 重啟服務
```bash
sudo systemctl restart supervisor
```

## EC2 instances g4dn.xlarge(Linux) 的 On-Demand 與 SPOT 價錢參考
### 2023-03-07 記錄
### **North America**
|Region Code   |Region Name              |On-Demand|SPOT    |
|--------------|-------------------------|---------|--------|
|us-east-1     |US East (N. Virginia)    |  $0.5260| $0.1578|
|us-east-2     |US East (Ohio)           |  $0.5260| $0.1578|
|us-west-1     |US West (N. California)  |  $0.6310| $0.1893|
|us-west-2     |US West (Oregon)         |  $0.5260| $0.1679|
|ca-central-1  |Canada (Central)         |  $0.5840| $0.1752|
|us-gov-east-1 |AWS GovCloud (US-East)   |  $0.6630|       -|
|us-gov-west-1 |AWS GovCloud (US-West)   |  $0.6630|       -|
### **Africa**
|Region Code   |Region Name              |On-Demand|SPOT    |
|--------------|-------------------------|---------|--------|
|af-south-1    |Africa (Cape Town)       |  $0.6980| $0.2094|
### **Asia Pacific**
|Region Code   |Region Name              |On-Demand|SPOT    |
|--------------|-------------------------|---------|--------|
|ap-east-1     |Asia Pacific (Hong Kong) |  $0.8100| $0.2430|
|ap-south-2    |Asia Pacific (Hyderabad) |        -|       -|
|ap-southeast-3|Asia Pacific (Jakarta)   |        -|       -|
|ap-southeast-4|Asia Pacific (Melbourne) |        -|       -|
|ap-south-1    |Asia Pacific (Mumbai)    |  $0.5790| $0.1737|
|ap-northeast-3|Asia Pacific (Osaka)     |  $0.7100| $0.2130|
|ap-northeast-2|Asia Pacific (Seoul)     |  $0.6470| $0.1941|
|ap-southeast-1|Asia Pacific (Singapore) |  $0.7360| $0.2213|
|ap-southeast-2|Asia Pacific (Sydney)    |  $0.6840| $0.2052|
|ap-northeast-1|Asia Pacific (Tokyo)     |  $0.7100| $0.2130|
### **Europe**
|Region Code   |Region Name              |On-Demand|SPOT    |
|--------------|-------------------------|---------|--------|
|eu-central-1  |Europe (Frankfurt)       |  $0.6580| $0.1974|
|eu-west-1     |Europe (Ireland)         |  $0.5870| $0.1922|
|eu-west-2     |Europe (London)          |  $0.6150| $0.1845|
|eu-south-1    |Europe (Milan)           |  $0.6160| $0.1848|
|eu-west-3     |Europe (Paris)           |  $0.6150| $0.1845|
|eu-south-2    |Europe (Spain)           |        -|       -|
|eu-north-1    |Europe (Stockholm)       |  $0.5580| $0.1674|
|eu-central-2  |Europe (Zurich)          |        -|       -|
### **Middle East**
|Region Code   |Region Name              |On-Demand|SPOT    |
|--------------|-------------------------|---------|--------|
|me-south-1    |Middle East (Bahrain)    |  $0.6450| $0.1935|
|me-central-1  |Middle East (UAE)        |        -|       -|
### **South America**
|Region Code   |Region Name              |On-Demand|SPOT    |
|--------------|-------------------------|---------|--------|
|sa-east-1     |South America (Sao Paulo)|  $0.8940| $0.2682|
