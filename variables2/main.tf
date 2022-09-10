provider "aws" {
    region = "eu-west-1"
}

/*
variable "flavor" {
    type = string
    #default = "t2.micro"       // If commented, we have to pass it whenn terraform plan with the flag -var
}
*/

resource "aws_instance" "instance1" {
    ami = "ami-09e2d756e7d78558d"
    instance_type = var.flavor
    subnet_id = "subnet-08910a259664677d9"
    tags = {
        "Name" = "first_instance"
    }
    ebs_optimized = var.ebs_opt
    cpu_core_count = var.core_count
}