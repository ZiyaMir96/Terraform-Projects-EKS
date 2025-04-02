# Terraform Block

terraform {
    required_version = "~> 1.11"  
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.91"
        }
      
    }

    #Adding Backend as s3 for Remote State Storage
    backend "s3" {
      bucket = "terraform-on-aws-eks-z"
      key    = "dev/eks-cluster/terraform.tfstate"
      region = "us-east-1"

      #For State Locking
      dynamodb_table = "dev-ekscluster"
      
    }
}

#Provider Block
provider "aws" {
  region = var.aws_region
  profile = "default"
  
}