resource "cloudflare_record" "dns_record" {
  zone_id = var.cloudflare_zone
  name    = "@"
  value   = azurerm_public_ip.vm_public_ip.ip_address
  type    = "A"
  ttl     = 300
  proxied = true
}

resource "cloudflare_record" "dns_record2" {
  zone_id = var.cloudflare_zone
  name    = "www"
  value   = azurerm_public_ip.vm_public_ip.ip_address
  type    = "A"
  ttl     = 300
  proxied = true
}