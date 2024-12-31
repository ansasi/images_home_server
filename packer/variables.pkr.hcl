variable "iso_url" {
  type    = string
  default = "https://cdimage.ubuntu.com/releases/22.04/release/ubuntu-22.04.5-preinstalled-desktop-arm64+raspi.img.xz"
}

variable "iso_checksum" {
  type    = string
  default = "74764944dd4a96bdddd30cf1ffc133ecbe5ebb1d1f2eaa34cd5f8fbb57211c86"
}

variable "ssh_username" {
  type    = string
  default = "ubuntu"
}

variable "ssh_private_key" {
  type      = string
  # sensitive = true
}

variable "ssh_public_key" {
  type      = string
  # sensitive = true
}