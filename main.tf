terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">= 2.7.4"
    }
  }
}

provider "proxmox" {
  pm_api_url          = var.proxmox_api_url
  pm_api_token_id     = var.proxmox_token
  pm_api_token_secret = var.proxmox_secret
}

variable "proxmox_api_url" {}
variable "proxmox_token" {}
variable "proxmox_secret" {}