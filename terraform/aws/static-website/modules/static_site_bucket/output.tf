output "s3id" {
value = aws_s3_bucket.bucket.id 
}
output "website_endpoint" {
  description = "Domain name of the bucket"
  value       = aws_s3_bucket.bucket.website_endpoint
}
