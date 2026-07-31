resource "docker_image" "python_api" {

  name = var.image_name

  build {
    context = "."
  }

}

resource "docker_container" "python_api" {

  name = "python-api-${terraform.workspace}"

  image = docker_image.python_api.image_id

  ports {

    internal = var.internal_port

    external = local.ports[terraform.workspace]

  }

}