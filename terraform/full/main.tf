resource "azurerm_resource_group" "rg" {
  name     = "${local.full_prefix}-rg"
  location = var.location
  tags = {
    "environment" = var.env
  }
}