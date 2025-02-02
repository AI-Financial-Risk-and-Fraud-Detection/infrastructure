# ###############################
# # File: modules/ec2/main.tf
# ###############################
# resource "aws_instance" "dev_instance" {
#   ami                    = "ami-0c55b159cbfafe1f0" # Example AMI
#   instance_type          = "t2.micro"
#   key_name               = "my-key"
#   subnet_id              = "subnet-abc123"  # Replace with actual subnet ID
#   security_groups        = ["sg-xyz456"]  # Replace with actual security group

#   tags = {
#     Name = "Dev-EC2"
#   }
# }

###############################
# File: modules/ec2/main.tf
###############################
resource "aws_instance" "ec2_instance" {
  ami                    = "ami-0c55b159cbfafe1f0" # Example AMI
  instance_type          = var.instance_type
  key_name               = "my-key"
  subnet_id              = var.subnet_id
  security_groups        = ["sg-xyz456"]  # Replace with actual security group

  tags = {
    Name = "EC2-${var.instance_type}"
  }
}
