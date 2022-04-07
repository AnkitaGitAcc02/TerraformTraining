module "VM-vnetModule"{
  source = "./VM-vnetModule"
}
module "VMModule"{
  source = "./VM-vnetModule"
}
module "AKSModule"{
  source = "./VM-vnetModule"
}
module "SQLModule"{
  source = "./VM-vnetModule"
}
module "DNSModule"{
  source = "./VM-vnetModule"
}

