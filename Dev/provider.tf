# AWS Provider

provider "aws" {
  region = var.region
}


terraform {
  backend "s3" {
    bucket = "group0bucket2"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}