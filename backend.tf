terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformTest"
    storage_account_name = "newteststorage1234"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}