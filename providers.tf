terraform {
  required_providers {
    ansible = {
      version = "~> 1.3.0"
      source  = "ansible/ansible"
      
    }
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}
provider "aws" {
    region  = "${var.region}"
}
