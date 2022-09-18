variable "aws_region" {
    type = string
    default = "eu-west-1"
}

variable "bucket_name" {
    type = string
    default = "joseillan-web-bucket-1"
}

variable "content" {
    type = string
    default = "Website hosted in S3"
}
