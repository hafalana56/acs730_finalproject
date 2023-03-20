# Acs-Final Project
Final Project: Two-Tier web application automation with Terraform

## Pre-requisites

1- Create Seperate s3 bucket for each environment from AWS console to host the terrafrom state file.

2- create ssh key:
 - ssh-keygen -t rsa -f group0


## Deploy the infrastrcture for each envrironment:

1 Clone the repo which contains the terraform code to deploy the infrastructure.
 
- git clone git@github.com:hafalana56/acs730_finalproject.git

2 To deploy, navigate into each environment(Prod, Dev Staging) and run the following terraform commands:

- terraform init
- terraform plan
- terraform apply --auto-aprove

## cleanup

1- to destory all the created resources run the command:
- terraform init
- terraform destroy --auto-aprove