rgs = {
  "rg1" = {
    name     = "new_rg"
    location = "EastUS"
  }
}

vnets = {
  "vnet1" = {
    name                = "new_vnet"
    resource_group_name = "new_rg"
    location            = "JapanEast"
    address_space       = ["10.0.0.0/16"]
  }

  "vnet2" = {
    name                = "new_vnet2"
    resource_group_name = "new_rg"
    location            = "JapanEast"
    address_space       = ["10.1.0.0/16"]
  }
}

snets = {
  "snet1" = {
    name                 = "fronend-subnet"
    resource_group_name  = "new_rg"
    virtual_network_name = "new_vnet"
    address_prefixes     = ["10.0.2.0/24"]
  }

  "snets2" = {
    name                 = "backend-subnet"
    resource_group_name  = "new_rg"
    virtual_network_name = "new_vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }

  "snets3" = {
    name                 = "forntend-subnet1"
    resource_group_name  = "new_rg"
    virtual_network_name = "new_vnet2"
    address_prefixes     = ["10.1.0.0/24"]


  }
}

pips = {
  "pub_ip1" = {
    name                = "pip1"
    resource_group_name = "new_rg"
    location            = "JapanEast"
  }

  "pub_ip2" = {
    name                = "pip2"
    resource_group_name = "new_rg"
    location            = "JapanEast"
  }
}

vms = {
  "vm1" = {
    nic_name            = "nic1"
    resource_group_name = "new_rg"
    location            = "JapanEast"
    nic_subnet_name     = "fronend-subnet"
    nic_vnet_name       = "new_vnet"
    nic_pip_name        = "pip1"
    vm_name             = "VM1"
    vm_size             = "Standard_D2s_v3"
    admin_username      = "devopsinsider"
    admin_password      = "delhi@12345"
  }

  "vm2" = {
    nic_name            = "nic2"
    resource_group_name = "new_rg"
    location            = "JapanEast"
    nic_subnet_name     = "backend-subnet"
    nic_vnet_name       = "new_vnet"
    nic_pip_name        = "pip2"
    vm_name             = "VM2"
    vm_size             = "Standard_D2s_v3"
    admin_username      = "devopsinsider1"
    admin_password      = "delhi@12345"
  }
}