provider "aws" {
    region = var.aws_region
}

resource "aws_iam_user" "iam_user_1" {
    name = var.user_name
}

resource "aws_iam_policy" "policy_1" {
    name        = var.policy_name
    path        = "/"
    description = "My test policy"

    # Terraform's "jsonencode" function converts a
    # Terraform expression result to valid JSON syntax.
    policy = jsonencode({
        Version: "2012-10-17",
        Statement: [
            {
                Action: [
                     "s3:ListAllMyBuckets"
                ],
                Effect: "Allow",
                Resource: "*"
            }
        ]
    })
}

resource "aws_iam_user_policy_attachment" "attachment1" {
    user       = aws_iam_user.iam_user_1.name
    policy_arn = aws_iam_policy.policy_1.arn
}