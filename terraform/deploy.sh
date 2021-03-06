#!/bin/bash

#telling OS to excute the following commands

cp ~/secrets/terraform.tfvars.asc .

#accessing the terraform.tvars.asc file

gpg --decrypt --nosymkey-cache --output ./terraform.tfvars ./terraform.tfvars.asc

#encrypting terraform.tfvars file

terraform plan

# command to creat an execution plan

terraform apply

#apply changes for the execution plan

sleep 60s

#waits 60seconds for the file to process????

rm ./terraform.tfvars*

#removing unecrypted file from the local directory
