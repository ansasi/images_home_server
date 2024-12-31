packer {
  required_plugins {
     arm = {
       version = ">= 0.1.0"
       source  = "github.com/mkaczanowski/packer-builder-arm"
     }
  }
}