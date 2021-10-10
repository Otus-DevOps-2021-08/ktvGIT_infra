variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable subnet_id {
  description = "Subnets for modules"
}

variable app_instances_count {
  description = "app_instances_count"
}

variable "private_key_for_conn_provisioner" {
  description = "private_key_for_conn_provisioner"
}

variable database_url {
  description = "Database url for reddit app"
}