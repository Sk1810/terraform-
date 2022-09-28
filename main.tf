resource "aws_acm_certificate" "cert" {
  domain_name       = var.STAGE == "hello" ? var.fe_domain_name : join(".", [var.STAGE, var.fe_domain_name])
  validation_method = "DNS"

  tags = {
    Environment = "sk"
  }
}    
