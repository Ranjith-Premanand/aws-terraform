terraform {
  backend "s3" {
    bucket = "s3-terraform-files"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
