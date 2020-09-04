# Assessment

 To create AWS S3 Static Website using terraform

## Clone
 git clone https://github.com/tusharchachar/assignment-repo.git

## Installation
* Create S3 bucket to save terraform.tfstate file.

* Install terraform. 
   Currently using Version 0.12.23

    You can download from
 [Terraform](https://www.terraform.io/downloads.html/) site.

* Export AWS_ACCESS_KEY_ID AND AWS_SECRET_ACCESS_KEY for corresponding AWS Account

* Provider versions are specified in assignment/main.tf file

## Steps to be perfomed for creating infra on AWS using terraform
* To initialize the backend and download all the required provide plugins
```
terraform init 
```
* It is used to create execution plan and helps to determine what actions are necessary to achieve the desired state specified in the configuration files.
```
terraform plan
```

* Apply your changes without Manual intervention.
```
terraform apply -auto-approve
```
