terraform {
  backend "s3" {
    bucket = "unique-bucket-name"
    region = "us-east-1"
    key = "abhishek/terraform.tfstate"
  }
}


