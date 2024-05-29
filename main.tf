resource "docker_image" "main" {
  name         = var.container_image
  keep_locally = false
}

resource "docker_network" "main" {
  name = "ubuntussh"
}

resource "docker_container" "main" {
  count = 2
  image = docker_image.main.image_id
  name  = "${var.container_name}${count.index}"
  network_mode = "ubuntussh"
  ports {
    internal = 22
    external = 22 + count.index + 1
  }
}
