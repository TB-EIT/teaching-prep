# I simply apply contents of a module here

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

module "vnet_with_subnets" {
  source = "./module"

  app          = "tfmoduletest"
  subnet_count = 10
}
