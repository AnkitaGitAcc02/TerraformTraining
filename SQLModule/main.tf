
resource "azurerm_sql_server" "example" {
  name                         = var.sql_server
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"

  tags = {
    environment = "production"
  }
}


resource "azurerm_sql_database" "example" {
  name                = var.sql_database
  resource_group_name = var.resource_group_name
  location            = "West US"
  server_name         = azurerm_sql_server.example.name
}

  


