provider "aws" {
    region = "eu-west-1"
}

resource "aws_instance" "instance1" {
    ami = "ami-09e2d756e7d78558d"
    instance_type = "t2.micro"
    subnet_id = "subnet-08910a259664677d9"
    tags = {
        "Name" = "first_instance"
    }
}