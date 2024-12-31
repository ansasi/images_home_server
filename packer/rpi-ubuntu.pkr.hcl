source "arm" "rpi-ubuntu" {
  iso_url               = var.iso_url
  iso_checksum          = var.iso_checksum
  iso_checksum_type     = "sha256"
  output_directory      = "build/output"
  image_build_method    = "hybrid"
  qemu_binary           = "qemu-system-aarch64"
  qemu_args             = ["-machine", "virt", "-cpu", "cortex-a72"]
  disk_image            = true
  format                = "img"
  headless              = true
  ssh_username          = var.ssh_username
  ssh_private_key       = var.ssh_private_key
  ssh_public_key        = var.ssh_public_key
  resize_rootfs         = true
  enable_serial_console = true
}


build {
  name      = "rpi-ubuntu"
  sources   = ["source.arm.rpi-ubuntu"]
  
  provisioner "shell" {
    script = "${path.template_dir}/scripts/base-setup.sh"
  }
  provisioner "shell" {
    environment_vars = ["USER=${var.ssh_username}"]
    script = "${path.template_dir}/scripts/install-docker.sh"
  }
  provisioner "shell" {
    script = "${path.template_dir}/scripts/cleanup.sh"
  }
}
