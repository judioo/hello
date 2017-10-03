#!/bin/sh
sudo apt-get install awscli
aws --version
aws configure set default.region $AWS_REGION
aws configure set default.output json
eval $(aws ecr get-login | sed 's|https://||' | sed 's|-e none ||')