variable "resource_group_name" {
  type = string
  default = "Terraform-rg1"
}
variable "location" {
  type = string
  default = "centralus"
}
variable "virtual_network_name" {
  type = string
  default = "vnettraining1"
}
variable "network_security_group" {
  type = string
  default = "Vnetnsg"
}