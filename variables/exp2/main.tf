provider "aws" {
  region     = var.region
}

resource "aws_instance" "example" {
  ami           = "ami-062f0cc54dbfd8ef1"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}