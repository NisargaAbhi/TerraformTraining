provider "aws" { 
 region = "ap-south-1"
}

resource "aws_instance" "test_instance" {
  ami = "ami-062f0cc54dbfd8ef1"
  instance_type = "t2.micro"
  
  tags = { 
    Name = "HelloWorld-Test"
  }

}
