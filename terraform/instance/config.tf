provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Name     = "Assignment-2"
      Course   = "CLO835"
      DoneBy = "Nila Hlaing"
    }
  }
}

terraform {
  required_version = ">= 0.12.0"
}

data "aws_vpc" "default" {
  default = true
}

#Create S3 Bucket to stored Terraform state
terraform {
  backend "s3" {
    bucket = "nila-clo835-assignment-2"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}

#Create a ECR repositorie named "my-app"
#resource "aws_ecr_repository" "app_repository" {
#  name                 = "my-app"
#  image_tag_mutability = "MUTABLE"

#  image_scanning_configuration {
 #   scan_on_push = true
 # }
#}

#Create a ECR repositorie named "my-db"
#resource "aws_ecr_repository" "db_repository" {
#  name                 = "my-db"
#  image_tag_mutability = "MUTABLE"

#  image_scanning_configuration {
#    scan_on_push = true
#  }
#}

#Testing