#!/bin/bash

echo "Remove Existed Container"
docker-compose -f /home/ec2-user/docker-compose.yml down || true