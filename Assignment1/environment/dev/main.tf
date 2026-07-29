module "resouce_group" {
  source = "../../child_modules/azurerm_resource_group"
  resource_group =  var.rgs
}

module "virtual_network" {
  source     = "../../child_modules/azurerm_virtual_network"
  vnets      = var.vnets
  depends_on = [module.resouce_group]
}

module "subnets" {
  source     = "../../child_modules/azurerm_subnet"
  snets      = var.snets
  depends_on = [module.virtual_network]

}

module "public_ip" {
  source     = "../../child_modules/azurerm_public_ip"
  pub_ip       = var.pips
  depends_on = [module.resouce_group]
}

module "vms" {
  source     = "../../child_modules/azurerm_virtual_machine_linux"
  vms        = var.vms
  depends_on = [module.public_ip, module.subnets]

}