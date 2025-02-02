# ###############################
# # Terraform Backend
# ###############################
# terraform {
#   backend "s3" {
#     bucket         = "my-terraform-state-bucket"
#     key            = "global/s3/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-lock"
#     encrypt        = true
#   }
# }

# provider "aws" {
#   region = "us-east-1"
# }

###############################
# File: backend.tf (Root Directory)
###############################
terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-fintech-management"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}