resource "aws_acm_certificate" "cert" {
  provider          = aws.us_region
  domain_name       = var.STAGE == "hello" ? var.fe_domain_name : join(".", [var.STAGE, var.fe_domain_name])
  validation_method = "DNS"
  tags = merge(tomap({ "STAGE" : var.STAGE }), var.DEFAULT_TAGS)   
}    
