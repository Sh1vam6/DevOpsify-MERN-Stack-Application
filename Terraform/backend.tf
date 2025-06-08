provider "aws" {
  region = var.aws-region
}

terraform {

  backend "s3" {
    bucket       = "devopsifying-mern-applicaton"
    region       = "us-east-1"
    key          = "eks/terraform.tfstate"
    use_lockfile = true # Enable S3-native state locking
    encrypt      = true
  }
}

