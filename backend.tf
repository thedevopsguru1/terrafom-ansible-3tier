terraform {
  backend "s3" {
    bucket = "macie"
    key    = "3tier/terraform.tfstate"
    region = "us-east-2"
  }
}
