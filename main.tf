provider "aws" {
  version = "2.33.0"

  region = var.aws_region
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/${var.ec2_ami}"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.ec2_instance_type

  tags = {
    user_name = var.tag_user_name
  }
}
