resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket     = var.s3_id
  policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Sid" : "PublicReadGetObject",
          "Effect" : "Allow",
          "Principal" : "*",
          "Action" : "s3:GetObject",
          "Resource" : "arn:aws:s3:::${var.s3_id}/*"
        }
      ]
    }
  )
}
