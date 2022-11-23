locals {
  aks_cluster_name = "learn-aks-terraform-aks"
}

resource "azurerm_resource_group" "default" {
  location = var.resource_group_location
  name     = "learn-aks-terraform"
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = local.aks_cluster_name
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "learn-aks-terraform-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.sp_client_id
    client_secret = var.sp_password
  }

  role_based_access_control_enabled = true

  tags = {
    environment = "lerning-excercise"
  }
}
