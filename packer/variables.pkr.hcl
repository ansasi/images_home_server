variable "ssh_username" {
  type    = string
  default = "ubuntu"
}

variable "ssh_private_key" {
  type      = string
  sensitive = true
}

variable "ssh_public_key" {
  type      = string
  sensitive = true
}