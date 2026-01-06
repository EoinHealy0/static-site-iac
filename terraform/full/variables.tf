variable "location" {
  description = "The Azure region to deploy resources in."
  type        = string
  default     = "Sweden Central"
}

variable "resource_prefix" {
  description = "Prefix for all resource names."
  type        = string
  default     = "staticsite"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = string
  default     = "10.0.0.0/16"
}

variable "env" {
  description = "Environment"
  type        = string
  default     = "prod"
}

variable "vm_size" {
  description = "VM SKU size"
  type        = string
  default     = "Standard_B2pts_v2"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "ssh_public_key" {
  description = "public key for SSH access to the VM"
  type        = string
}