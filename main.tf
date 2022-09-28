resource "aws_acm_certificate" "cert" {
  domain_name       = "sk.decode.io"
  validation_method = "DNS"

  tags = {
    Environment = "sk"
  }
}    
