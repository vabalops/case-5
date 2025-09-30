terraform {
  backend "s3" {
    bucket = "test-arva-asdsaf6gre63dfb"
    key    = "tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "demo-tf-user" {
  name = "demo-tf-user"
}

output "user_arn" {
  value = aws_iam_user.demo-tf-user.arn
}
