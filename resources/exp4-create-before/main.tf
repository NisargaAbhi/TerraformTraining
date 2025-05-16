provider "aws" { 
 region = "ap-south-1"
}

resource "aws_instance" "web" {
  # Amazon Linux Img 
  ami = "ami-062f0cc54dbfd8ef1"

  # Ubuntu Linux Img 
  #ami = "ami-0e35ddab05955cf57"
  instance_type = "t2.micro"
  
  lifecycle { 
    create_before_destroy = true 
  }
}
