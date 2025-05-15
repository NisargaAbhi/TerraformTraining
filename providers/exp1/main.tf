provider "aws" { 
 region = "ap-south-1"
}

provider "aws" { 
 region = "us-east-2"
 alias = "myregion"
}

resource "aws_instance" "frontend" {
  ami = "ami-062f0cc54dbfd8ef1"
  instance_type = "t2.micro"
}

resource "aws_instance" "backend" {
  provider = aws.myregion
  ami = "ami-062f0cc54dbfd8ef1"
  instance_type = "t2.micro"
}
