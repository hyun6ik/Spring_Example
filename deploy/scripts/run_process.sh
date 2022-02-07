#!/bin/bash

REGION="ap-northeast-2"
ACCOUNT_ID="705494525874"
ECR_REPOSITORY="${ACCOUNT_ID}.dkr.ecr.ap-northeast-2.amazonaws.com"
ECR_DOCKER_IMAGE_NAME="spring-example"
ECR_DOCKER_IMAGE="${ECR_REPOSITORY}/${ECR_DOCKER_IMAGE_NAME}"
ECR_DOCKER_TAG="1"

aws ecr get-login-password --region ${AWS_DEFAULT_REGION} | docker login --username AWS --password-stdin ${ECR_REPOSITORY}

export IMAGE=${ECR_DOCKER_IMAGE}
export TAG=${ECR_DOCKER_TAG}

docker-compose -f /home/ec2-user/docker-compose.yml up -d;