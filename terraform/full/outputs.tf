output "network_security_group_id" {
    description = "The ID of the Network Security Group."
    value       = azurerm_network_security_group.nsg.id
}

output "public_ip_address" {
    description = "The public IP address of the VM."
    value       = azurerm_public_ip.public_ip.ip_address
}