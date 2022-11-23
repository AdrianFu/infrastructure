variable "resource_group_location" {
  default     = "Australia East"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "sp_client_id" {
  description = "Azure service principal client id"
}

variable "sp_password" {
  description = "Azure service principal client secret"
}
