variable "image_name" {
  description = "Docker Image name for nginx"
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "Name for the nginx container"
  type        = string
  default     = "nginx_container"
}

variable "internal_port" {
  description = "Port inside the container"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "Port exposed on the host"
  type        = number
  default     = 8080
}

variable "environment_variables" {
  description = "Environment variables for the container"
  type        = map(string)
  default     = {}
}
