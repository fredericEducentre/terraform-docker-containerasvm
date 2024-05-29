variable "container_image" {
  description = "Value of the name for the Docker image"
  type        = string
  default     = "fredericeducentre/ubuntu-ssh"
}

variable "container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "ubuntu-ssh"
}
