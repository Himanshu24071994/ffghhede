module "resource_group"{
source ="../child_module/azure_resource_group"
resource_group_name = "himanshutodoapprg"
location = "central india"
}


module "virtual_network"{
depends_on = [module.resource_group]
source = "../child_module/azure_virtual_network"
himanshutodoappvn_name = "vnet-himanshutodoapp"
himanshutodoappvn_location = "central india"
resource_group_name = "himanshutodoapprg"
address_space = ["10.0.0.0/16"]
}

module "frontend_subnet" {
  depends_on = [module.virtual_network]
  source     = "../child_module/azure_subnet"

  resource_group_name  = "himanshutodoapprg"
  virtual_network_name = "vnet-himanshutodoapp"
  subnet_name          = "frontend-subnet"
  address_prefixes     = ["10.0.1.0/24"]
}

module "backend_subnet" {
  depends_on = [module.virtual_network]
  source     = "../child_module/azure_subnet"

  resource_group_name  = "himanshutodoapprg"
  virtual_network_name = "vnet-himanshutodoapp"
  subnet_name          = "backend-subnet"
  address_prefixes     = ["10.0.2.0/24"]
}