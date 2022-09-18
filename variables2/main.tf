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
    ami = var.amis.amazon
    instance_type = var.flavor
    subnet_id = "subnet-08910a259664677d9"
    tags = {
        "Name" = "first_instance"
        "Environment" = var.environment[1]
    }
    #ebs_optimized = var.ebs_opt
    #cpu_core_count = var.core_count
}

output "instance_public_IP" {
    value = aws_instance.instance1.public_ip
}