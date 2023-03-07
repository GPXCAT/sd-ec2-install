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

## EC2 instances g4dn.xlarge 的 On-Demand 與 SPOT 價錢參考
@2023-03-07查詢
|Region Code   |Region Name              |On-Demand|SPOT    |
|--------------|-------------------------|---------|--------|
**North America**
|us-east-1     |US East (N. Virginia)    |  $0.5260| $0.1578|
|us-east-2     |US East (Ohio)           |  XXX| XX|
|us-west-1     |US West (N. California)  |  XXX| XX|
|us-west-2     |US West (Oregon)         |  XXX| XX|
|ca-central-1  |Canada (Central)         |  XXX| XX|
|us-gov-east-1 |AWS GovCloud (US-East)   |  XXX| XX|
|us-gov-west-1 |AWS GovCloud (US-West)   |  XXX| XX|
**Africa**
|af-south-1    |Africa (Cape Town)       |  XXX| XX|
**Asia Pacific**
|ap-east-1     |Asia Pacific (Hong Kong) |  XXX| XX|
|ap-south-2    |Asia Pacific (Hyderabad) |  XXX| XX|
|ap-southeast-3|Asia Pacific (Jakarta)   |  XXX| XX|
|ap-southeast-4|Asia Pacific (Melbourne) |  XXX| XX|
|ap-south-1    |Asia Pacific (Mumbai)    |  XXX| XX|
|ap-northeast-3|Asia Pacific (Osaka)     |  XXX| XX|
|ap-northeast-2|Asia Pacific (Seoul)     |  XXX| XX|
|ap-southeast-1|Asia Pacific (Singapore) |  XXX| XX|
|ap-southeast-2|Asia Pacific (Sydney)    |  XXX| XX|
|ap-northeast-1|Asia Pacific (Tokyo)     |  XXX| XX|
**Europe**
|eu-central-1  |Europe (Frankfurt)       |  XXX| XX|
|eu-west-1     |Europe (Ireland)         |  XXX| XX|
|eu-west-2     |Europe (London)          |  XXX| XX|
|eu-south-1    |Europe (Milan)           |  XXX| XX|
|eu-west-3     |Europe (Paris)           |  XXX| XX|
|eu-south-2    |Europe (Spain)           |  XXX| XX|
|eu-north-1    |Europe (Stockholm)       |  XXX| XX|
|eu-central-2  |Europe (Zurich)          |  XXX| XX|
**Middle East**
|me-south-1    |Middle East (Bahrain)    |  XXX| XX|
|me-central-1  |Middle East (UAE)        |  XXX| XX|
**South America**
|sa-east-1     |South America (Sao Paulo)|  XXX| XX|