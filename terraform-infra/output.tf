# ###############################
# # File: outputs.tf (Root Directory)
# ###############################
# output "iam_role_arn" {
#   description = "IAM Role ARN"
#   value       = aws_iam_role.OrganizationAccountAccessRole.arn
# }

# output "ec2_instance_id" {
#   description = "EC2 Instance ID"
#   value       = aws_instance.dev_instance.id
# }

###############################
# File: outputs.tf (Root Directory)
###############################
# output "iam_role_arn" {
#   description = "IAM Role ARN"
#   value       = aws_iam_role.OrganizationAccountAccessRole.arn
# }

# output "ec2_instance_id" {
#   description = "EC2 Instance ID"
#   value       = aws_instance.ec2_instance.id
# }

output "iam_role_arn" {
  description = "IAM Role ARN"
  value       = module.iam.iam_role_arn  # 🔹 Fetch from module output
}

output "ec2_instance_id" {
  description = "EC2 Instance ID"
  value       = module.ec2.ec2_instance_id  # 🔹 Fetch from module output
}
