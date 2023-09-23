resource "proxmox_vm_qemu" "test_vm" {
  name        = "tftest1.xyz.com"
  desc        = "tf description"
  target_node = "proxmox1-xx"

  clone = "ci-ubuntu-template"

  # The destination resource pool for the new VM
  pool = "pool0"

  disk {
    slot    = 0
    type    = "scsi"
    storage = "local-lvm"
    size    = "10G"
  }

  cores   = 3
  sockets = 1
  memory  = 2560

  network {
    model  = "virtio"
    bridge = "vmbr0"
  }
  os_type = "cloud-init"
}
