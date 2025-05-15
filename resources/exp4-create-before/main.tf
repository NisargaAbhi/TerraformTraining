provider "aws" { 
 region = "ap-south-1"
}

resource "aws_instance" "web" {
  count = 1
  # Amazon Linux Img 
  ami = "ami-0b9f27b05e1de14e9"

  # Ubuntu Linux Img 
  #ami = "ami-0688ba7eeeeefe3cd"
  instance_type = "t2.micro"
  
  lifecycle { 
    create_before_destroy = true 
  }
}
