resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}



resource "azurerm_kubernetes_cluster" "example" {
  name                = var.kubernetes_cluster
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "standard_d16ads_v5"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "dev"
  }
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.example.kube_config.0.client_certificate
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw

  sensitive = true
}