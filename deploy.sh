#!/usr/bin/env bash

#install aws cli
pip install awscli --upgrade --user

# zip the jar artifact
gzip build/libs/hello-boot-0.1.0.jar

# upload the artifact to s3 bucket
aws s3 cp build/libs/hello-boot-0.1.0.jar.gz s3://spring-boot-jeetu/application.jar.zip

# create new version from of the application
aws elasticbeanstalk create-application-version --application-name "My First Elastic Beanstalk Application" --version-label $TRAVIS_BUILD_NUMBER --description application-v1 --source-bundle S3Bucket="spring-boot-jeetu",S3Key="application.jar.zip"

#update environment with the newly created version
aws elasticbeanstalk update-environment --application-name "My First Elastic Beanstalk Application" --version-label $TRAVIS_BUILD_NUMBER —environment-name Default-Environment
