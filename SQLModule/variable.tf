variable "resource_group_name" {
  type = string
  default = "Terraform-rg"
}
variable "location" {
  type = string
  
  default = "centralus"
}

variable "sql_server" {
  type = string
  default = "myexamplesqlserver"
}
variable "sql_database" {
  type = string
  default = "mysqldatabase"
}
variable "administrator_login" {
  type = string
  default = "4dm1n157r470r"
}
variable "aadministrator_login_password" {
  type = string
  default = "4-v3ry-53cr37-p455w0rd"
}
   