variable "common_name" {
  description = "Common name for the certificate"
  type        = string
}

variable "organization" {
  description = "Organization name"
  type        = string
  default     = "MyOrg"
}

variable "validity_period_hours" {
  description = "Certificate validity in hours"
  type        = number
  default     = 8760
}
