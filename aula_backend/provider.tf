terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-raphael"
    key    = "aula_backend"
    region = "us-east-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  alias = "east"
  region = "us-east-2"
}


# Configure the AWS Provider
provider "aws" {
  alias = "west"
  region = "us-west-2"
}
