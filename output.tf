output "ids" {
  value = {for group,id in azurerm_application_security_group.app_sec_group: group => id.id}
}