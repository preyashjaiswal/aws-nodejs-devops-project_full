terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket"
    key    = "aws-nodejs-devops-project/terraform.tfstate"
    region = "us-east-1"
  }
}