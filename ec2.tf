resource "aws_instance" "myec2vm" {
  ami = var.ami
  instance_type = var.instance_type
  user_data = file("${path.module}/install.sh")
  vpc_security_group_ids = [ aws_security_group.vpc-web.id   ]
  tags = {
    "Name" = "EC2 Test"
  }
  subnet_id = module.vpc.public_subnets[0]
}

output "instance_id" {
  value = aws_instance.myec2vm.public_ip
}