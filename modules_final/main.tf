provider "aws" {
    region = "eu-west-1"
}

module "vpc" {
    source = "./vpc"
    vpcname = "vpc_module1"
    vpc_cidr = "19.82.0.0/16"
    az = "eu-west-1a"
    subnet_cidr = "19.82.1.0/24"
    subnet_names = "Subnet1a"
    ec2_private_ip = ["19.82.1.82"]    
}

module "ec2" {
    source = "./ec2"
    ec2ami = "ami-0865a7423ddc6317c"
    ec2type = "t3.micro"
    ec2iface = module.vpc.ec2_network_interface
    ec2name = "EC2 name from Module"
}