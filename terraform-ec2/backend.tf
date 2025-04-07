terraform {
  backend "s3" {
    bucket         = "terraform-tf-state-files-bucket"         # <-- Replace
    key            = "terraform/ec2/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
