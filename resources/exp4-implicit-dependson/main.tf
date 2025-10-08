provider "aws" { 
 region = "ap-south-1"
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id  # reference to VPC
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
}

resource "aws_instance" "ec2" {
  ami = "ami-062f0cc54dbfd8ef1"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id  # reference to Subnet
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}



