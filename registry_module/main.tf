provider "aws" {
    region = "eu-west-1"
}

module "consul" {
  source  = "hashicorp/consul/aws"
  version = "0.11.0"
  # insert the 4 required variables here
}