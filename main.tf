resource "aws_acm_certificate" "cert" {
  provider          = aws.us_region
  domain_name       = var.fe_domain_name
  validation_method = "DNS"
  tags = var.DEFAULT_TAGS   
}    

resource "aws_s3_bucket" "sk_s3_bucket" {
  provider = aws.us_region
  bucket   = var.fe_domain_name
  tags     = var.DEFAULT_TAGS
}

resource "aws_s3_bucket_acl" "s3_bucket_acl" {
  provider = aws.us_region
  bucket   = aws_s3_bucket.sk_s3_bucket.id
  acl      = "private"
}

resource "aws_s3_bucket_public_access_block" "s3_bucket_public_access_block" {
  provider                = aws.us_region
  bucket                  = aws_s3_bucket.sk_s3_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
