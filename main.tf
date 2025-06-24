provider "aws" {
  region = "us-east-2"
}

module "vpc" {
  source             = "./vpc"
  vpc_cidr           = "10.1.0.0/16"
  public_subnets     = ["10.1.1.0/24", "10.1.2.0/24"]
  private_subnets    = ["10.1.101.0/24", "10.1.102.0/24"]
  availability_zones = ["us-east-2a", "us-east-2b"]
}
module "ec2" {
  source         = "./ec2"
  ami_id         = "ami-0dc8cf4c9fbd193cd"
  subnet_id      = "subnet-03d9aed4ff3ddd4f2"
   security_group_ids = ["sg-0186c0d0ec209f345"]
     key_name = "cross-region"
  
}