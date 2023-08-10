# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  cloud {
    organization = "tarasorg"
    workspaces {
      name = "learn-terraform-azure"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

locals {
  name_prefix = "${var.org}-${var.app}-${var.stage}-${var.location}"
}

resource "azurerm_resource_group" "rg" {
  name     = "${local.name_prefix}-rg"
  location = var.location
}

data "azurerm_resource_group" "rg" {
  name = "${local.name_prefix}-rg"

  depends_on = [azurerm_resource_group.rg]
}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "${local.name_prefix}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "example" {
  count = var.subnet_count

  name                 = "subnet-${count.index}"
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.${count.index}.0/24"]
}
