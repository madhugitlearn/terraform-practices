terraform {
  backend "s3" {
    bucket         = "madhutfstate"       
  # <-- Replace
    key            = "terraform/ec2/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
