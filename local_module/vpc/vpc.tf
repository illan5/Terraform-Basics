variable "vpc_cidr" {
    type = string
  
}

variable "vpc_name" {
    type = string
  
}

resource "aws_vpc" "vpc1" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = var.vpc_name
    }
}

output "vpcid" {
    value = aws_vpc.vpc1.id
  
}