variable "sk-bucket-name" {
  type = string
  description = "bucket-name"
}

variable "DEFAULT_TAGS" {
  type = map(any)
  description = "Default Tags for all resources"
}

variable "sk-domain-name" {
  type = string
  description = "Frontend Domain Name"
}
