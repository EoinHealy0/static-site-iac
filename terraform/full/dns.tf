resource "cloudflare_dns_record" "dns_record" {
  zone_id = var.cloudflare_zone
  name    = "@"
  content   = azurerm_public_ip.public_ip.id
  type    = "A"
  ttl     = 300
  proxied = true
}

resource "cloudflare_dns_record" "dns_record2" {
  zone_id = var.cloudflare_zone
  name    = "www"
  content   = azurerm_public_ip.public_ip.id
  type    = "CNAME"
  ttl     = 300
  proxied = true
}