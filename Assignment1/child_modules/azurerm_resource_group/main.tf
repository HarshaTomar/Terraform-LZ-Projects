variable resource_group{}

resource "azurerm_resource_group" "rg1"{
    for_each= var.resource_group
    name = each.value.name
    location = each.value.location
}