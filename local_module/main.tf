provider "aws" {
    region = "eu-west-1"
}

module "localvpc" {
    source = "./vpc"
    vpc_cidr = "10.50.0.0/16"
    vpc_name = "Name from local module"
}

output "vpc_output" {
    value = module.localvpc.vpcid
  
}