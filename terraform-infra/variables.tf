###############################
# File: variables.tf (Root Directory)
###############################
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "dev_instance_type" {
  description = "Instance type for Dev environment"
  type        = string
  default     = "t2.micro"
}

variable "qa_instance_type" {
  description = "Instance type for QA environment"
  type        = string
  default     = "t3.micro"
}

variable "prod_instance_type" {
  description = "Instance type for Production environment"
  type        = string
  default     = "t3.medium"
}
