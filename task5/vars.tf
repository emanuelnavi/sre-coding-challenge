variable "vpc_name" {
  type = string
  default = "my_vpc"
}

variable "env" {
  
  type = string
  default = "dev"
}

variable "ami" {
  type = string
  description = "The AMI used for provisioning EC2 instance"
  default = "ami-01163e76c844a2129"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "aws_region" {
  type = string
  default = "us-west-1"
}