terraform {
  required_version = "~>  1.10.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "dev-mat-tf-bucket"
    region         = "us-east-2"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
