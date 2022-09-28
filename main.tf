resource "aws_acm_certificate" "cert" {
  domain_name       = "sk.studyview.getdecode.io"
  validation_method = "DNS"

  tags = {
    Environment = "sk"
  }
}    
