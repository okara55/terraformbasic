
provider "azurerm" {
    version = "2.20.0"
 features {}
}
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
  tags = {
    "owner" = "osman"
  }
}
output "id" {
    value = data.azurerm_resource_group.example.id
  
}
