terraform { 
 required_providers { 
  aws = { 
     version = ">=3.63.0, <=3.65.0"
   }
 }
}

provider "aws" { 
 region = "ap-south-1"
}

resource "aws_instance" "frontend" {
  ami = "ami-062f0cc54dbfd8ef1"
  instance_type = "t2.micro"
}

