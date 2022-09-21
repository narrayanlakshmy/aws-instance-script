provider "aws" {
  access_key = "AKIA6M4VVQ33OXKARHXK"
  secret_key = "ra1ITIjv5wS2Q1EQspzO10Z9asGmJWEjdrorjO3j"
    region = "us-east-1"
}

resource "aws_instance" "example" {
  ami     = "ami-2757f631"
  instance_type = "t2.micro"
}
