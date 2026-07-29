terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.75.0"
    }
  }

  backend "azurerm" {
    key                  = "environment.tfstate"
    resource_group_name  = "rg-backend"
    storage_account_name = "stgbackend11"
    container_name       = "environment-container"
  }
}

provider "azurerm" {
  features {

  }

}