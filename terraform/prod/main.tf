provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
  subnet_id       = var.subnet_id
  app_instances_count = var.app_instances_count
  database_url     = module.db.local_ip_address_db
  private_key_for_conn_provisioner = var.private_key_for_conn_provisioner
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = var.subnet_id
  private_key_for_conn_provisioner = var.private_key_for_conn_provisioner
}
