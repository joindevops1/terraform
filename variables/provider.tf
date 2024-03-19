terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.40.0" # AWS provider version,not terraform version
    }
  }

  backend "s3" {
    bucket = "rajesh76-remote-state"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "rajesh76-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}