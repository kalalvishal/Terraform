terraform {
  backend "azurerm" {
    resource_group_name  = "RG-EastUS-TFState"
    storage_account_name = "strgacttfstate1508748498"
    container_name       = "tfstate"
    key                  = "Demo/GithubDemo.tfstate"
  }
}
