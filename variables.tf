variable "fe_domain_name" {
  type = string
  description = "Frontend Domain Name"
}

variable "STAGE" {
  type = "map"
}

variable "DEFAULT_TAGS" {
  type = map(any)
  description = "Default Tags for all resources"
}
