provider "aws" { 
 region = "ap-south-1"
}

resource "aws_instance" "ec2-test" {

  ami = "ami-06031e2c49c278c8f"
  instance_type = "t2.micro"

}