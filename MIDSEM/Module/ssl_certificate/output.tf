output "certificate_pem" {
  description = "Generated PEM certificate"
  value       = tls_self_signed_cert.cert.cert_pem
}

output "private_key_pem" {
  description = "Generated Private Key"
  value       = tls_private_key.private_key.private_key_pem
}
