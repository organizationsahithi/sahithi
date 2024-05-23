module "iam" {
  source = "./modules/s3/iam"
  role = var.role
  
  
}
module "ec2" {
  source         = "./modules/ec2"
  ami            = var.ami
  instance_type  = var.instance_type
  subnet_id      = var.subnet_id
  instance_name  = var.instance_name
  key_name       = var.key_name
  
}
module "s3"{
source = "./modules/s3"
bucket_name = var.bucket_name
}
module "vpc" {
  source              = "./modules/s3/vpc"
  cidr_block          = var.cidr_block
  vpc_name            = var.vpc_name
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones
}