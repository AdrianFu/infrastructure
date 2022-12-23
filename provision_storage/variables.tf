variable "resource_group_location" {
  default     = "Australia East"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "learn-storage-terraform"
  description = "Name of the resource group."
}

variable "containter_registry_name" {
  default     = "learnStorageContainerRegistry"
  description = "Name for default containter registry."
}

variable "sp_client_id" {
  description = "Azure service principal client id"
}

variable "sp_password" {
  description = "Azure service principal client secret"
}
