provider "aws" {
  region                   = var.aws_region
  profile                  = var.aws_profile
}

variable "aws_prefix" {
  type                     = string
}

variable "aws_profile" {
  type                     = string
}

variable "aws_region" {
  type                     = string
}

resource "random_string" "aws-suffix" {
  length                  = 5
  upper                   = false
  special                 = false
}
