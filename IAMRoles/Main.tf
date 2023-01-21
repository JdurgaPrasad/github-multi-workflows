terraform {
  backend "s3" {
    bucket         = "terraform-tfstate-backend-test-2023"
    key            = "tf-infra/terraform.tfstate"
    region         = "us-west-2"
    ##dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

provider "aws" {
	region = "us-west-2"
}
