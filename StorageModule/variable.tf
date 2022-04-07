variable "resource_group_name" {
  type = string
  default = "Terraform-rg"
}
variable "resource_group_location" {
  type = string
  default = "east us"
}
variable "StorageAccount_name" {
  type = string
  default = "terraformstrg"
}
variable "StorageAccount_blob" {
  type = string
  default = "tfstate"
}