resource "random_id" "server" {
  keepers = {
    azi_id = 1
  }

  byte_length = 8
}

resource "azurerm_dns_zone" "example-public" {
  name                = var.dns_zone
  resource_group_name = var.resource_group_name
}

resource "azurerm_traffic_manager_profile" "example" {
  name                   = var.traffic_manager_profile
  resource_group_name    = var.resource_group_name
  traffic_routing_method = "Weighted"

  dns_config {
    relative_name = random_id.server.hex
    ttl           = 100
  }

  monitor_config {
    protocol                     = "HTTP"
    port                         = 80
    path                         = "/"
    interval_in_seconds          = 30
    timeout_in_seconds           = 9
    tolerated_number_of_failures = 3
  }

  tags = {
    environment = "dev"
  }
}