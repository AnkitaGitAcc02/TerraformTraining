resource "azurerm_resource_group" "example" {
  name     = "Terraform-rg"
  location = "east us"
}

module "VMModule"{

  source ="./VMModule"
}