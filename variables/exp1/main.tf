provider "aws" { 
 region = "ap-south-1"
}

variable "instance_type" {
  type    = string
  # default = "t2.micro"
}

resource "aws_instance" "frontend" {
  ami = "ami-062f0cc54dbfd8ef1"
  instance_type = var.instance_type 
}
