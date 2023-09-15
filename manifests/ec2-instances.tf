terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

resource "aws_instance" "ec2demo" {
  ami           = "ami-07dc0b5cad2999c28"
  instance_type = "t2.micro"
}
