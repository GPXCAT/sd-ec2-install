#!/bin/sh
AWS_CLI="docker run --rm -ti -v ~/.aws:/root/.aws amazon/aws-cli"

${AWS_CLI} run-instances \
    --count 1 \
    --instance-type g4dn.xlarge \
    --image-id ami-0557a15b87f6559cf \
    --key-name stable-diffusion-webui \
    --security-group-ids sg-0f90be5d16639339e \
    --instance-market-options '{"MarketType":"spot","SpotOptions":{"InstanceInterruptionBehavior":"terminate","MaxPrice":"0.2","SpotInstanceType":"one-time"}}' \
    --block-device-mappings '{"DeviceName":"/dev/sda1","Ebs":{"VolumeSize":100,"VolumeType":"gp3"}}' \
    --region us-east-1 \
    --output table

${AWS_CLI} run-instances \
ec2 describe-instances \
    --region us-east-1