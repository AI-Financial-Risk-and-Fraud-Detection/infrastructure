###############################
# File: envs/prod/terraform.tfvars
###############################
aws_region = "us-east-1"
instance_type = "t3.medium"
vpc_cidr      = "10.2.0.0/16"
subnet_cidr   = "10.2.1.0/24"
env_name      = "prod"
