variable "bucket_name" { type = string }

locals {
  bucket_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "s3:GetObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "${aws_s3_bucket.assignment_bucket.arn}/*",
                "${aws_s3_bucket.assignment_bucket.arn}"
            ]
        }
	]
}
EOF
}

resource "aws_s3_bucket" "assignment_bucket" {
  bucket = var.bucket_name
  acl = "private"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = {
    Name = var.bucket_name
    Terraform = "true"
	Environment = "Development"
  }
}  
  
resource "null_resource" "upload_to_s3" {
  provisioner "local-exec" {
    command = "aws s3 sync ../index.html s3://${aws_s3_bucket.assignment_bucket.id}"
  }
}

resource "aws_s3_bucket_policy" "assignment_bucket" {
  bucket = aws_s3_bucket.assignment_bucket.id
  policy = local.bucket_policy
}

