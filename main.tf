# Terraform Settings Block
terraform {
  backend "s3" {
    bucket = "madhutfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  #profile = "developer" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "us-east-1"
}



# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-00a929b66ed6e0de6" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}