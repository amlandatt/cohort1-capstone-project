resource "aws_s3_bucket" "bucket" {
  bucket = var.s3_bucket_name 
  force_destroy = true
}

resource "aws_s3_bucket_public_access_block" "bucket_access_block" {
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "null_resource" "run_script" {
    provisioner "local-exec" {
        command = "aws s3 sync s3://space-invaders-source s3://${var.s3_bucket_name}"
    }
}


resource "aws_s3_bucket_website_configuration" "hosting" {
  bucket = aws_s3_bucket.bucket.id

  index_document {
    suffix = "index.html"
  }
}

