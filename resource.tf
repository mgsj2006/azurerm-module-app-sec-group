resource "azurerm_application_security_group" "app_sec_group" {
  for_each = toset(var.groups)
  name                = each.key
  location            = var.location
  resource_group_name = var.rg_name
  tags                = var.tags
}