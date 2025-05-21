provider "aws" { 
 region = "ap-south-1"
}

data "aws_security_group" "existing_sg" {
  name = "launch-wizard-1"
}

resource "aws_security_group_rule" "allow_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = data.aws_security_group.existing_sg.id
  description       = "Allow HTTP"
}

