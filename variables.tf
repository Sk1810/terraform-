variable "fe_domain_name" {
  type = string
  description = "Frontend Domain Name"
}

variable "STAGE" {
  type = string
   default     = "hello"
  description = "Stage for deployment"
}

variable "DEFAULT_TAGS" {
  type = map(any)
  description = "Default Tags for all resources"
}
