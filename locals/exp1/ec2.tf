
resource "aws_instance" "example" {
  ami           = "ami-062f0cc54dbfd8ef1"
  instance_type = var.instance_type

  tags = merge(
    local.tags,
    {
      Name = local.instance_name
    }
  )

}