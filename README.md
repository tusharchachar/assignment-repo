# assignment-repo

Pre-requisites:
1. Create S3 bucket to save terraform.tfstate file.
2. Install terraform. Currently we are using version 0.12.23
3. Add terraform to the PATH.
4. Export AWS_ACCESS_KEY_ID AND AWS_SECRET_ACCESS_KEY for corresponding AWS Account.
5. Provider versions are specified in assignment/main.tf file

Steps to perform to create infra on AWS using terraform:
1. terraform init 
   -> To initialize the backend and download all the required provide plugins

2. terraform plan
   -> It is used to create execution plan and helps to determine what actions are necessary to achieve the desired state specified in the configuration files.
   
3. terraform apply -auto-approve
   -> Apply your changes without Manual intervention.
