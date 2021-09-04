# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "instance" {

  ami                    = "ami-00399ec92321828f5" // Ubuntu Server 20.04 LTS
  instance_type          = "t2.micro"
  key_name               = var.aws_key_name
  monitoring             = true
  vpc_security_group_ids = [var.vpc_security_group_id]

  tags = {
    "Name" = var.instance_name
  }

  provisioner "remote-exec" {
    inline = ["echo Connection has been established successfully"]

    connection {
      host        = self.public_ip
      type        = "ssh"
      user        = var.remote_user
      private_key = file(var.ssh_private_key)
    }
  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u '${var.remote_user}' -i '${self.public_ip},' --private-key ${var.ssh_private_key} ../../ansible/playbooks/main.yml"
  }
}


