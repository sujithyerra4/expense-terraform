terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

    backend "s3" {
    bucket = "77-remote-state"
    key    = "expense-vpcc"
    region = "us-east-1"
    dynamodb_table= "locking"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}