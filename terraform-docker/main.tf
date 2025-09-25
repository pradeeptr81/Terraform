terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Pull nginx image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Run container
resource "docker_container" "nginx" {
  name  = "my-nginx"
  image = docker_image.nginx.image_id   # ✅ use image_id instead of latest
  ports {
    internal = 80
    external = 8081
  }
}

