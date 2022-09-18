provider "aws" {
    region = var.aws_region
}

resource "aws_s3_bucket" "web_test_1" {
    bucket = var.bucket_name
    acl = "public-read"
    website {
        index_document = "index.html"
    }
}

resource "aws_s3_bucket_object" "object_1" {
    bucket = aws_s3_bucket.web_test_1.bucket
    key    = "index.html"
    acl = "public-read"
    content = var.content
    content_type = "text/html"
}