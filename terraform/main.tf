provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
}

module "alb" {
  source   = "./modules/alb"
  vpc_id   = module.vpc.vpc_id
  subnets  = module.vpc.public_subnets
}

module "ec2" {
  source       = "./modules/ec2"
  vpc_id       = module.vpc.vpc_id
  subnets      = module.vpc.public_subnets
  alb_arn      = module.alb.alb_arn
  instance_count = var.ec2_instance_count
}

module "rds" {
  source   = "./modules/rds"
  vpc_id   = module.vpc.vpc_id
  subnets  = module.vpc.private_subnets
}

module "ecr" {
  source = "./modules/ecr"
}

module "iam" {
  source = "./modules/iam"
}

module "acm" {
  source = "./modules/acm"
  domain_name = var.domain_name
}