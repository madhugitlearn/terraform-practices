provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-00a929b66ed6e0de6"  # Amazon Linux 2 (check for latest)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-GHA-EC2"
  }
}
