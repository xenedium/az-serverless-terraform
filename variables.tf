variable "registry_url" {
  type    = string
  default = "https://registry.hub.docker.com"
}

variable "image_name" {
  type    = string
  default = "xenedium/az-serverless-terraform"
}

variable "image_tag" {
  type    = string
  default = "latest"
}