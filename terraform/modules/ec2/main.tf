resource "aws_instance" "app" {
  count         = var.instance_count
  ami           = "ami-12345678" # Placeholder AMI
  instance_type = "t2.micro"
  subnet_id     = element(var.subnets, count.index)
  vpc_security_group_ids = []

  tags = {
    Name = "app-instance-${count.index}"
  }
}