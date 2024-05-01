terraform {
  backend "s3" {
    bucket = "macie237"
    key    = "3tier/terraform.tfstate"
    region = "us-east-2"
  }
}
