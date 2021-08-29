terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.1-alpha.1"
    }
  }
}

# There are currently no configuration options for the provider itself.

resource "virtualbox_vm" "node" {
  count  = 1
  name   = "terraform_node"
  image  = "https://vagrantcloud.com/ubuntu/boxes/xenial64/versions/20180420.0.0/providers/virtualbox.box"
  cpus   = 2
  memory = "512 mib"


  network_adapter {
    type           = "bridged"
    host_interface = "en0"
  }

}