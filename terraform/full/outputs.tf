output "network_security_group_name" {
  description = "The ID of the Network Security Group."
  value       = azurerm_network_security_group.nsg.name
}

output "resource_group_name" {
  description = "The name of the Resource Group."
  value       = azurerm_resource_group.rg.name
}

output "public_ip_address" {
  description = "The public IP address of the VM."
  value       = azurerm_public_ip.public_ip.ip_address
}