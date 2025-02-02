###############################
# File: modules/iam/main.tf
###############################
resource "aws_iam_role" "OrganizationAccountAccessRole" {
  name               = "OrganizationAccountAccessRole"
  assume_role_policy = file("../../policies/assume_role_policy.json")
}

resource "aws_iam_policy" "ec2_management_policy" {
  name        = "EC2ManagementPolicy"
  description = "Policy for managing EC2 instances"
  policy      = file("../../policies/ec2_management_policy.json")
}

resource "aws_iam_role_policy_attachment" "ec2_management_attach" {
  role       = aws_iam_role.OrganizationAccountAccessRole.name
  policy_arn = aws_iam_policy.ec2_management_policy.arn
}