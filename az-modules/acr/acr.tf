resource "azurerm_resource_group" "rg" {
  name     = "${var.env}-acr-rg"
  location = var.rg_location
}

resource "azurerm_container_registry" "acr" {
  name                = "${var.env}acr"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

#resource "azurerm_kubernetes_cluster" "example" {
  #name                = "example-aks1"
  #location            = azurerm_resource_group.example.location
  #resource_group_name = azurerm_resource_group.example.name
  #dns_prefix          = "exampleaks1"

  #default_node_pool {
   # name       = "default"
    #node_count = 1
    #vm_size    = "Standard_D2_v2"
  #}

  #identity {
    #type = "SystemAssigned" 
    #}

  #tags = {
    #env = "dev"
  #}
#}

resource "azurerm_role_assignment" "role" {
  principal_id                     = var.principal_id
  #name = 
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.acr.id
  skip_service_principal_aad_check = true
}