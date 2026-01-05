resource "cloudflare_dns_record" "dns_record" {
  zone_id = var.cloudflare_zone
  name    = "@"
  content = azurerm_public_ip.public_ip.ip_address
  type    = "A"
  ttl     = 1
  proxied = true
}

resource "cloudflare_dns_record" "dns_record2" {
  zone_id = var.cloudflare_zone
  name    = "www"
  type    = "CNAME"
  ttl     = 1
  proxied = true
  data = {
    "target" = "@"
  }
}