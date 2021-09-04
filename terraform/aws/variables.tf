variable "instance_name" {
  description = "EC2 Instance Name"
}

variable "aws_key_name" {
  description = "SSH Key Pair Name in AWS"
}

variable "vpc_security_group_id" {
  description = "Security Group ID"
}

variable "ssh_private_key" {
  description = "Local SSH Private Key Name"
}

variable "remote_user" {
  description = "Remote User Name"
}