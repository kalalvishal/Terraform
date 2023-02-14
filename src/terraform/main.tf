resource "azurerm_resource_group" "this" {
  name     = "RG-${local.projectName}"
  location = local.region
  tags     = local.tags
}

resource "azurerm_virtual_network" "this" {
  name                = "VNET-${local.projectName}"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  address_space       = local.vnet_address_space
  tags                = local.tags
}

resource "azurerm_subnet" "this" {
  for_each             = local.subnets
  name                 = each.value["name"]
  address_prefixes     = each.value["address_prefix"]
  location             = azurerm_resource_group.this.location
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
}
