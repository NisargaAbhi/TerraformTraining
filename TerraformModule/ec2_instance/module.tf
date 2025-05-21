module "my_ec2" {
  source        = "../modules/ec2"
  region        = "ap-south-1"
  ami           = "ami-062f0cc54dbfd8ef1"
  instance_type = "t2.micro"
  instance_name = "MyModuleEC2"
}

output "ec2_instance_id" {
  value = module.my_ec2.instance_id
}


module "my_ec2_test1" {
  source        = "../modules/ec2"
  region        = "ap-south-1"
  ami           = "ami-062f0cc54dbfd8ef1"
  instance_type = "t2.micro"
  instance_name = "MyModuleEC2-test"
}


module "my_s3_bucket" {
  source            = "../modules/s3"
  region            = "ap-south-1"
  bucket_name       = "my-example-s3-module-bucket"
  enable_versioning = true
  tags = {
    Owner       = "DevOpsTeam"
    Environment = "Dev"
  }
}

output "bucket_id" {
  value = module.my_s3_bucket.bucket_id
}