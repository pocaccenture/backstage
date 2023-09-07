#!/bin/bash

# Replace these variables with your values
AWS_REGION="us-east-1" # Update with your AWS region
ECR_REPOSITORY_URL=$(terraform output ecr_repository_url) # Get the repository URL from Terraform

## Authenticate Docker with ECR
#aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin https://945314604561.dkr.ecr.us-east-1.amazonaws.com
#
## Build your Docker image (replace with your build command)
##docker build -t ic-telefonica-backstage ./build/poc-telefonica/packages/backend
#cd ./build/poc-telefonica
#docker build . -f ./packages/backend/Dockerfile --tag ic-telefonica-backstage:1.0.0
#
## Tag the image for ECR
#docker tag ic-telefonica-backstage:1.0.0 945314604561.dkr.ecr.us-east-1.amazonaws.com/ic-poc-telefonica-repo/ic-telefonica-backstage:1.0.0
#
## Push the image to ECR
#docker push 945314604561.dkr.ecr.us-east-1.amazonaws.com/ic-poc-telefonica-repo/ic-telefonica-backstage:1.0.0
#
#echo "Docker image pushed to 945314604561.dkr.ecr.us-east-1.amazonaws.com/ic-poc-telefonica-repo/ic-telefonica-backstage:1.0.0"


#aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 945314604561.dkr.ecr.us-east-1.amazonaws.com
#cd ./build/poc-telefonica
#docker build -t ic-poc-telefonica-repo:1.0.0 . -f ./packages/backend/Dockerfile
#docker tag ic-poc-telefonica-repo:1.0.0 945314604561.dkr.ecr.us-east-1.amazonaws.com/ic-poc-telefonica-repo:1.0.0
#docker push 945314604561.dkr.ecr.us-east-1.amazonaws.com/ic-poc-telefonica-repo:1.0.0
#echo "Docker image pushed to 945314604561.dkr.ecr.us-east-1.amazonaws.com/ic-poc-telefonica-repo/ic-telefonica-backstage:1.0.0"



#aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 945314604561.dkr.ecr.us-east-1.amazonaws.com
#docker build -t ic-poc-telefonica-repo .





aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 945314604561.dkr.ecr.us-east-1.amazonaws.com
nvm current node -v
nvm install 18.12.0
nvm use 18.12.0
docker buildx build --platform linux/amd64 -t ic-poc-telefonica-repo:2.0.0 . -f ./packages/backend/Dockerfile
docker tag ic-poc-telefonica-repo:2.0.0 945314604561.dkr.ecr.us-east-1.amazonaws.com/ic-poc-telefonica-repo:2.0.0
docker push 945314604561.dkr.ecr.us-east-1.amazonaws.com/ic-poc-telefonica-repo:2.0.0
echo "Docker image pushed to 945314604561.dkr.ecr.us-east-1.amazonaws.com/ic-poc-telefonica-repo/ic-telefonica-backstage:2.0.0"
