terraform {
  backend "s3" {
    bucket = "terraform-state-rahul123"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
