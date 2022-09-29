resource "aws_acm_certificate" "cert" {
  provider          = aws.us_region
  domain_name       = var.sk-domain-name
  validation_method = "DNS"
  tags = var.DEFAULT_TAGS   
}    

resource "aws_s3_bucket" "sk_s3_buckt" {
  provider = aws.us_region
  bucket   = var.sk-bucket-name
  tags     = var.DEFAULT_TAGS
}

resource "aws_s3_bucket_acl" "s3_bucket_acl" {
  provider = aws.us_region
  bucket   = aws_s3_bucket.sk_s3_buckt.id
  acl      = "private"
}

resource "aws_s3_bucket_public_access_block" "s3_bucket_public_access_block" {
  provider                = aws.us_region
  bucket                  = aws_s3_bucket.sk_s3_buckt.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
