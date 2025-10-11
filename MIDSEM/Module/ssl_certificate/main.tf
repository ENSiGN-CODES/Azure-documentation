resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "tls_self_signed_cert" "cert" {
  key_algorithm   = tls_private_key.private_key.algorithm
  private_key_pem = tls_private_key.private_key.private_key_pem

  subject {
    common_name  = var.common_name
    organization = var.organization
  }

  validity_period_hours = var.validity_period_hours
  is_ca_certificate     = false

  allowed_uses = [
    "digital_signature",
    "key_encipherment",
    "server_auth"
  ]
}
