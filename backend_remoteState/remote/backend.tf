terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-nis"
    key    = "terraform-backend-nis/terraform.tfstate"
    region = "ap-south-1"
  }
}
