provider "aws" {
  version = "2.33.0"
  region = var.aws_region
}

resource "aws_instance" "web" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  tags = {
    user_name = var.tag_user_name
  }
}
