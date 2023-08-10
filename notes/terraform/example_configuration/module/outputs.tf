output "vnet_address_space" {
  value = azurerm_virtual_network.vnet.address_space
}

output "vnet_name_length" {
  value = length(azurerm_virtual_network.vnet.name)
}
