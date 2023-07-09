variable "pm_api_url" {
  default = "https://172.17.0.11:8006/api2/json"
}

variable "pm_user" {
  default = "terraform@pve"
}

variable "pm_password" {
  default = "15426378aa"
}

variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCv+Ify1EtCIxPR/ntB8UlvmBU1/B0BMWc9MIingWI7ioXCS/eUjrjyAf66Ne3FCZX2AodAyStbrfru+/gWI+Ceb5sqUWmvyIZA7Zqy9BHzWC+sRnWPod551SoqbQtHeyAvcdTAwFF21Rt6r575w1W4fIhJABUl4fdYVtAk+zu//1jJLifOYDaNaVYF2h1HEnShVPzhU+Fg9URNt2+1YcbSBnWoNAAp+BlQ3OtKsZd5xM4Opglwug0dA6p2pbrAB55f/BL3t96z148N1HX1GSpu3BCG/Ps2HGHjIVM+/shnQ84rKe5c+CgPr0hxeOxsT617IN9brJJneHo9EGRDEGenYnW7RaAKgjBcXeJOqsI8leUZS6f+9b6RmwP6JOL2EGzUaQLyX0QI/VRktSbIeGno/X9g3uSGw0WrW5DSa8f5PrrNsCecdCCXPhRJZbDLmJ6wQsYW2clBbn3RTjPwZKIulupks1gfNBc80EXPLiYX7HkvOnOSSdNgj51Y1lsPjis= albert@albert-desktop"
}

variable "proxmox_host" {
  default = "core-1"
}

variable "template_name" {
  default = "ubuntu-20.04"
}

variable "user_name" {
  default = "super-admin"
}

variable "user_pass" {
  default = "15426378"
}

variable "dns_common" {
  default = "77.88.8.8"
}
