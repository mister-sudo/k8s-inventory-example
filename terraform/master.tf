resource "proxmox_vm_qemu" "master" {

  name  = "master-0${count.index + 1}"
  count = 3

  target_node = var.proxmox_host

  clone           = var.template_name
  agent           = 0
  os_type         = "cloud-init"
  cores           = 2
  sockets         = 1
  cpu             = "kvm64"
  memory          = 4096
  scsihw          = "virtio-scsi-pci"
  bootdisk        = "scsi0"
  vmid            = "100${count.index + 1}"
  qemu_os         = "other"
  additional_wait = 10

  disk {
    slot    = 0
    size    = "50G"
    type    = "scsi"
    storage = "data"
  }

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }

  ipconfig0  = "ip=172.17.0.10${count.index + 1}/24,gw=172.17.0.1"
  nameserver = var.dns_common
  ciuser     = var.user_name
  cipassword = var.user_pass
  ssh_user   = var.user_name
  sshkeys    = <<EOF
  ${var.ssh_key}
  EOF
}
