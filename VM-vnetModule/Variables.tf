variable "resource_group_name" {
  type = string
  default = "Terraform-rg"
}
variable "location" {
  type = string
  default = "centralus"
}
variable "virtual_network_name" {
  type = string
  default = "vnettraining"
}
variable "virtual_Machine_name" {
  type = string
  default = "Ankitatestmyvm1"
}
variable "admin_username" {
  type = string
  default = "adminuser"
}
variable "admin_password" {
  type = string
  default = "Password123!"
}
        
