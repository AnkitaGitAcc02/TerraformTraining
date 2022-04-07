variable "resource_group_name" {
  type = string
  default = "Terraform-rg"
}
variable "location" {
  type = string
  default = "centralus"
}

variable "kubernetes_cluster" {
  type = string
  default = "AKSdevcluster"
}