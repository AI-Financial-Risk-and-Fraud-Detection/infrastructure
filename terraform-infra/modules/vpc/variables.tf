###############################
# File: modules/ec2/variables.tf
###############################
# variable "instance_type" {
#   description = "EC2 instance type"
#   type        = string
# }

variable "vpc_id" {
  description = "VPC ID to deploy the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"  # Optional: Set a default value
}
