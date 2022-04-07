variable "resource_group_name" {
  type = string
  default = "Terraform-rg"
}

variable "traffic_manager_profile" {
  type = string
  default = "trafficmanger1"
}
variable "dns_zone" {
  type = string
  default = "mydomain.com"
}