terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.69.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }
  backend "azurerm" {
  }
}

provider "azurerm" {
  subscription_id = var.ARM_SUBSCRIPTION_ID
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = var.ARM_TENANT_ID
  # Configuration options
  features {}
}

provider "azuread" {
}