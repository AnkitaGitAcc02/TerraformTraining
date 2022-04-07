
resource   "azurerm_virtual_network"   "myvnet"   { 
   name   =   var.virtual_network_name
   address_space   =   [ "10.0.0.0/16" ] 
   location   =   var.location
   resource_group_name   =   var.resource_group_name
 } 

 resource   "azurerm_subnet"   "frontendsubnet"   { 
   name   =   "${var.virtual_network_name}-subnet" 
   resource_group_name   =    var.resource_group_name
   virtual_network_name   =   azurerm_virtual_network.myvnet.name 
   address_prefixes   =   ["10.0.1.0/24"]
 } 
 resource   "azurerm_public_ip"   "myvm1publicip"   { 
   name   =   "${var.virtual_network_name}-pip"
   location   =   var.location
   resource_group_name   =   var.resource_group_name
   allocation_method   =   "Dynamic" 
   sku   =   "Basic" 
 } 
 resource   "azurerm_network_interface"   "myvm1nic"   { 
   name   =   "${var.virtual_network_name}-nic"
   location   =   var.location
   resource_group_name   =   var.resource_group_name 

   ip_configuration   { 
     name   =   "${var.virtual_network_name}-ipconfig1" 
     subnet_id   =   azurerm_subnet.frontendsubnet.id 
     private_ip_address_allocation   =   "Dynamic" 
     public_ip_address_id   =   azurerm_public_ip.myvm1publicip.id
 } 
 }
 resource   "azurerm_windows_virtual_machine"   "example"   { 
   name                    =   var.virtual_Machine_name  
   location                =   var.location
   resource_group_name     =   var.resource_group_name 
   network_interface_ids   =   [azurerm_network_interface.myvm1nic.id] 
   size                    =   "Standard_DS1" 
   admin_username          =   var.admin_username  
   admin_password          =   var. admin_password 

   source_image_reference   { 
     publisher   =   "MicrosoftWindowsServer" 
     offer       =   "WindowsServer" 
     sku         =   "2019-Datacenter" 
     version     =   "latest" 
   } 

   os_disk   { 
     caching             =   "ReadWrite" 
     storage_account_type   =   "Standard_LRS" 
   } 
 } 