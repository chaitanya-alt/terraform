terraform {
    required_providers {
      aws ={
      source = "hashicorp/aws"
      version = "5.66.0"
    }
    }
    backend "s3" {
        bucket = "chaitanya-s3-306"
        key = "remote-state-file"
        dynamodb_table = "chaitanya-306"
        region = "us-east-1"
    }
}

provider "aws" {
    region = "us-east-1"

}