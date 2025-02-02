###############################
# File: modules/scp/main.tf
###############################
resource "aws_organizations_policy" "deny_terminate_ec2" {
  name        = "DenyTerminateEC2"
  description = "Prevents termination of EC2 instances in Dev account"
  content     = file("../../policies/scp_deny_terminate_ec2.json")
}

resource "aws_organizations_policy_attachment" "attach_scp_deny_terminate" {
  policy_id = aws_organizations_policy.deny_terminate_ec2.id
  target_id = "123456789012"  # Replace with Dev account ID
}