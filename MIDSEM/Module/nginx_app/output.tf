output "container_id" {
  description = "ID of the nginx docker container"
  value       = docker_container.nginx_container.id
}

output "image_name" {
  description = "Docker image used"
  value       = docker_image.nginx_image.name
}
