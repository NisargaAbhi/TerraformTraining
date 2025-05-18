variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  description = "Name for the EC2 instance"
  type = string  
}

variable "region" {
  description = "name of the region"
  type = string  
}