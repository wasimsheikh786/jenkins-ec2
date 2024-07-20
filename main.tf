provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_access_key = var.secret_access_key
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "ExampleInstance"
  }
}

variable "region" {}
variable "access_key" {}
variable "secret_access_key" {}
variable "ami" {}
variable "instance_type" {}
