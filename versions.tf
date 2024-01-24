terraform {
  required_version = ">= 1.0.0, < 1.7.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}
