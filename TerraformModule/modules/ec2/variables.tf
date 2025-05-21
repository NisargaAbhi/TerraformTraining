variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  description = "Name tag for the instance"
  type = string
}

variable "ami" {
  description = "AMI ID"
  type        = string
}

variable "region" {
  description = "name of the region"
  type = string  
}