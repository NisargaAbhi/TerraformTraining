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

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "The public IP of the instance"
  value       = aws_instance.example.public_ip
}

