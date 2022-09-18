variable "flavor" {
    type = string
    default = "t2.micro"
}

variable "ebs_opt" {
    type = bool
    default = false
}

variable "core_count" {
    type = number
    default = 4
}

variable "environment" {
    type = list(string)
    default = [ "test","dev","prod" ]
}

variable "amis" {
    type = map
    default = {
        "amazon" = "ami-09e2d756e7d78558d"
        "ubuntu" = "ami-0d75513e7706cf2d9"
        "redhad" = "ami-0c321db7d6db74d19"
    }
}