# sre-coding-challenge
This package would create a VPC with CIDR=10.0.0.0/16 in us-west-1 region. Also create IGW, RouteTables.

Create a Security Group in this VPC which allow inbound on port 80.

Create a EC2 instace of t2.micro instnace type and attach the above security group in above AZ.

It is also bootstrapped with the install.sh

