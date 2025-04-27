output "s3_url" {
  description = "S3 hosting URL (HTTP)"
  value       = module.s3_module.website_endpoint
}
