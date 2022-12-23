terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Your code goes here

data "terraform_remote_state" "storage" {
  backend = "local"

  config = {
    path = "../provision_storage/terraform.tfstate"
  }
}
