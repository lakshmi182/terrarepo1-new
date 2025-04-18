terraform {

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">=4.0.0"
    }
    github = {
        source = "integrations/github"
        version = ">=5.0.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"

}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

resource "aws_instance" "wynewserver1" {
  ami           = "ami-01ff9fc7721895c6b" # Make sure this AMI is valid in your region
  instance_type = var.cpu

  tags = {
    Name = "wynewserver1"
  }
}

resource "aws_instance" "wynewserver2" {
  ami           = "ami-01ff9fc7721895c6b"
  instance_type = var.cpu

  tags = {
    Name = "wynewserver2"
  }
}

resource "github_repository" "terrarepo1" {
  name        = "terrarepo1-new"
  description = "Terraform-managed repo 1"
  visibility  = "public"
}

resource "github_repository" "terrarepo2" {
  name        = "terrarepo2-new"
  description = "Terraform-managed repo 2"
  visibility  = "public"
}
