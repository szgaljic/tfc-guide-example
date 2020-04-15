variable "tag_user_name" {
  type = string
}

variable "ec2_ami" {
  type    = string
  default = "ubuntu-bionic-18.04-amd64-server-20200112"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "ec2_instance_type" {
  type    = string
  default = "t2.micro"
}
