terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}
provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "resourcegroup" {
  name     = var.resource_group_name
  location = var.resource_group_location
}
resource "azurerm_storage_account" "StorageAccount" {
  name                     = var.StorageAccount_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_container" "Blob" {
  name                  = var.StorageAccount_blob
  storage_account_name  = var.StorageAccount_name
  container_access_type = "private"
}