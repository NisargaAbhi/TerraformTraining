locals {
  instance_name = "my-ec2-${var.environment}"
  region        = "us-east-1"
  tags = {
    Environment = var.environment
    Project     = "TerraformTraining"
    Owner       = "DevOps"
  }
}