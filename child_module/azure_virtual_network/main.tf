resource "azurerm_virtual_network" "himanshutodoappvn"{
 name                = var.himanshutodoappvn_name
  location            = var.himanshutodoappvn_location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
}
  
