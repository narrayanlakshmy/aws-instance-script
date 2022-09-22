provider "aws" {
  access_key = "AKIA6M4VVQ33IGC3XWXG"
  secret_key = "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"
    region = "ap-northeast-1"
}

resource "aws_instance" "firstec2" {
  ami     = "ami-0f36dcfcc94112ea1"
  instance_type = "t2.micro"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
