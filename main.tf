resource "aws_acm_certificate" "cert" {
  domain_name       = "skarthick.com"
  validation_method = "DNS"

  tags = {
    Environment = "test"
  }
}    
