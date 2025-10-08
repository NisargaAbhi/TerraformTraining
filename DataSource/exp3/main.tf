provider "aws" { 
 region = "ap-south-1"
}

data "aws_subnet" "existing" {
  id = "subnet-0bfb09fdb2b7a26ae"
}

resource "aws_instance" "example" {
  ami = "ami-062f0cc54dbfd8ef1"
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.existing.id
  tags = {
    Name = "ec2-newbox"
  }
}


