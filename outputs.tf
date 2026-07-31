output "workspace" {

  value = terraform.workspace

}

output "container_name" {

  value = docker_container.python_api.name

}

output "url" {

  value = "http://localhost:${local.ports[terraform.workspace]}"

}