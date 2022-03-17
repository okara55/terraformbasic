terraform {
    backend "azure"{}
}

provider "azurerm" {
    version = "2.4.0"
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
