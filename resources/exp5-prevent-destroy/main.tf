provider "aws" { 
 region = "ap-south-1"
}


resource "aws_instance" "web" {
  count = 1
  ami = "ami-062f0cc54dbfd8ef1"

  instance_type = "t2.micro"
  
  lifecycle { 
    prevent_destroy = false 
  }
}
