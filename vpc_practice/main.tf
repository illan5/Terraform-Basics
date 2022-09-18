provider "aws" {
    region = "eu-west-1"
}

resource "aws_vpc" "vpc1" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = var.vpc_name
    }
}

resource "aws_subnet" "subnet1a" {
    vpc_id     = aws_vpc.vpc1.id
    cidr_block = var.subnet_cidr[0]
    availability_zone = var.az[0]
    tags = {
        Name = var.subnet_name[0]
    }
}