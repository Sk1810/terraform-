resource "aws_acm_certificate" "cert" {
  provider          = aws.us_region
  domain_name       = var.fe_domain_name
  validation_method = "DNS"
  tags = var.DEFAULT_TAGS   
}    
