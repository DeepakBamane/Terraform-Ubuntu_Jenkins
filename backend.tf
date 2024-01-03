terraform {
  backend "s3" {
    bucket = "bucket-for-ubuntu-terra"
    region = "ap-south-1"
    key = "eks/terraform.tfstate"
  }
}