resource "azurerm_virtual_network" "vnet" {
  name                = "${local.full_prefix}-vnet"
  address_space       = [var.vnet_address_space]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  tags = {
    "environment" = var.env
  }
}

resource "azurerm_subnet" "subnet" {
  name                 = "${azurerm_virtual_network.vnet.name}-subnet-1"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [cidrsubnet("${var.vnet_address_space}", 8, 1)]
}

resource "azurerm_network_security_group" "nsg" {
  name                = "${azurerm_subnet.subnet.name}-nsg"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  tags = {
    "environment" = var.env
  }
}

resource "azurerm_subnet_network_security_group_association" "subnet_nsg_association" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}