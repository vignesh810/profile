#!/bin/bash/
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 499932433650.dkr.ecr.us-east-1.amazonaws.com
docker build -t vprofile:$BUILD_NUMBER .
docker tag vprofile:$BUILD_NUMBER 499932433650.dkr.ecr.us-east-1.amazonaws.com/eks-project/vprofile:"$BUILD_NUMBER"
docker push 499932433650.dkr.ecr.us-east-1.amazonaws.com/eks-project/vprofile:"$BUILD_NUMBER"
docker logout 753634426646.dkr.ecr.us-east-1.amazonaws.com/vprofile
