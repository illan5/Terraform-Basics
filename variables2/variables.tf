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