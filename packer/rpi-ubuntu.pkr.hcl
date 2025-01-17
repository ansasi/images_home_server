source "arm" "ubuntu" {
  # TODO
}


build {
  name      = "rpi-ubuntu"
  sources   = ["source.arm.ubuntu"]
  
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
