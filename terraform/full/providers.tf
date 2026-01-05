terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.57.0"
    }
    cloudflare = {
      version = ">= 5.15.0"
    }
  }
  
  backend "azurerm" {
    container_name = "fulltfstate"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

provider "cloudflare" {
}