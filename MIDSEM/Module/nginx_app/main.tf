resource "docker_image" "nginx_image" {
  name         = var.image_name
  keep_locally = false
}

resource "docker_container" "nginx_container" {
  name  = var.container_name
  image = docker_image.nginx_image.latest
  ports {
    internal = var.internal_port
    external = var.external_port
  }
  restart = "always"
  env     = var.environment_variables
}
