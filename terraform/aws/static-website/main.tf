
module "s3_module" {
  source = "./modules/static_site_bucket"
 // s3_id = aws_s3_bucket.bucket.id
}

module "policy_module" {
  source = "./modules/policy"
  s3_id =  module.s3_module.s3id
}

