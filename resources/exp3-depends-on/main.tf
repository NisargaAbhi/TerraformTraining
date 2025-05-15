provider "aws" { 
 region = "ap-south-1"
}

resource "aws_instance" "frontend" {
  ami = "ami-062f0cc54dbfd8ef1"
  instance_type = "t2.micro"
   depends_on = [ aws_instance.backend ] 
}

resource "aws_instance" "backend" {
  ami = "ami-062f0cc54dbfd8ef1"
  instance_type = "t2.micro"
}
