locals {
  full_prefix = "${var.resource_prefix}-${var.env}"
  vm_name     = "${local.full_prefix}-vm"
}