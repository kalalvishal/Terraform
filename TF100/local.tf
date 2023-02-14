locals {
  projectName = "TerraformDemo"
  region      = "westus"

  tags = {
    Project = local.projectName
    Purpose = "Demo"
    TFLevel = "TF100"
  }

  vnet_address_space = [
    "192.168.0.0/24"
  ]

  subnets = {
    subnet1 = {
      name           = "OPS-Subnet"
      address_prefix = ["192.168.1.0/24"]
    }
    subnet2 = {
      name           = "WEB-Subnet"
      address_prefix = ["192.168.2.0/24"]
    }
    subnet3 = {
      name           = "DB-Subnet"
      address_prefix = ["192.168.3.0/24"]
    }
  }
}