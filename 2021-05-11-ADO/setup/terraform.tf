terraform {
  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">=0.1.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"

    }

    azuread = {
      source = "hashicorp/azuread"
      version = "~> 1.0"
    }

    github = {
      source = "integrations/github"
      version = "4.9.4"
    }

  }
  backend "remote" {
    organization = "tdm-in-the-cloud"

    workspaces {
      name = "TDM-DevOps"
    }
  }
}