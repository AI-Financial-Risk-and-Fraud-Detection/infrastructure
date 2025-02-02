module "iam" {
  source = "./modules/iam"
}

module "ec2" {
  source       = "./modules/ec2"
  instance_type = "t2.micro"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_id
}
