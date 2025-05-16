variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "environment" {
  type        = string
}