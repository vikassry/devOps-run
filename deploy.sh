#!/usr/bin/env bash

#install aws cli
pip install awscli --upgrade --user

# upload the artifact to s3 bucket
aws s3 cp build/distributions/bootDemo-1.0-SNAPSHOT.zip s3://spring-boot-jeetu/bootDemo-$TRAVIS_BUILD_NUMBER.zip

# create new version from of the application
aws elasticbeanstalk create-application-version --application-name "My First Elastic Beanstalk Application" --version-label $TRAVIS_BUILD_NUMBER --description application-v1 --source-bundle S3Bucket="spring-boot-jeetu",S3Key="bootDemo-$TRAVIS_BUILD_NUMBER.zip"

#update environment with the newly created version
aws elasticbeanstalk update-environment --application-name "My First Elastic Beanstalk Application" --version-label bootDemo-$TRAVIS_BUILD_NUMBER.zip --environment-name "Default-Environment"
