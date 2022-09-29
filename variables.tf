variable "sk-domain-name" {
  type = string
  description = "Frontend Domain Name"
}

variable "DEFAULT_TAGS" {
  type = map(any)
  description = "Default Tags for all resources"
}
