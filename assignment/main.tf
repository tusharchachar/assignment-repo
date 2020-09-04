terraform {
  backend "s3" {
    bucket        	= "test-tfstate-terraform-bucket"
    encrypt        	= true						
    key            	= "statefile/terraform.tfstate"
    region         	= "us-east-1"
  }
}

provider "aws" {
  version = ">= 3.0, < 4.0"
  region = "us-east-1"
}

provider "null" {
  version = "~> 2.1"
}

module "test_bucket" {
  source = "../modules"
  bucket_name = var.assignment_bucket_name
}

