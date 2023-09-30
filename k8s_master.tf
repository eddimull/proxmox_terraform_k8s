resource "proxmox_vm_qemu" "k8s_master" {
  name        = "K8s Master"
  desc        = "K8s Master"
  target_node = "proxmox"
  # vmid        = 106
  clone       = "ci-ubuntu-template"
  # oncreate = false
  # os_type  = "cloud-init"
  # preprovision = false

  # The destination resource pool for the new VM
  # pool = "pool0"

  # disk {
  #   slot    = 0
  #   type    = "scsi"
  #   storage = "local-lvm"
  #   size    = "10G"
  # }

  # cores   = 3
  # sockets = 1
  # memory  = 1024

  # network {
  #   model  = "virtio"
  #   bridge = "vmbr0"
  # }
  # os_type = "6.x - 2.6 Kernel"
}
