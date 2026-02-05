packer {
  required_plugins {
    docker = {
      version = ">= 1.0.0"
      source  = "github.com/hashicorp/docker"
    }
  }
}

source "docker" "nginx" {
  image  = "nginx:alpine"
  commit = true
}

build {
  sources = ["source.docker.nginx"]

  provisioner "shell" {
    inline = [
      "mkdir -p /usr/share/nginx/html",
      "rm -f /usr/share/nginx/html/*"
    ]
  }

  provisioner "file" {
    source      = "../index.html"
    destination = "/usr/share/nginx/html/index.html"
  }

  post-processor "docker-tag" {
    repository = "nginx-custom"
    tag = ["1.0"]
  }
}
