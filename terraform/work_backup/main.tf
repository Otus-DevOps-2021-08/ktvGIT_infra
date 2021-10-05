# terraform {


#   backend "s3" {
#     endpoint   = "storage.yandexcloud.net"
#     bucket     = "terraform-stor"
#     region     = "ru-central"
#     key        = "./terraform.tfstate"
#     access_key = "M-PaGlFzxm5hDpXpUNz9"
#     secret_key = "ewhCrctDvmAKGCO2zGSUp6rO-XP8TIkuXyLMqWjN"

#     skip_region_validation      = true
#     skip_credentials_validation = true

#     # skip_metadata_api_check = true
#   }
# }

provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone

}

# provider "yandex" {
# version = "0.35"
# token = "AQAAAAAL6luyAATuwUsNEoQwEUXIs2ZDNoMXCA0"
# cloud_id = "b1gbknu1bpl1p7fce0fp"
# folder_id = "b1ghupcpsoarvins3d2u"
# zone = "ru-central1-a"
# }

#  resource "yandex_vpc_network" "app-network" {
#      name = "reddit-app-network"
#     }

#   resource "yandex_vpc_subnet" "app-subnet" {
#      name = "reddit-app-subnet"
#      zone = "ru-central1-a"
#      network_id = "${yandex_vpc_network.app-network.id}"
#      v4_cidr_blocks = ["192.168.10.0/24"]
#     }

# resource "yandex_compute_instance" "app" {

#  count = var.app_instances_count
#  name = "reddit-app${count.index}"
# name = "reddit-app${count.index}"

  # resources {
  #   cores  = 2
  #   memory = 2
  # }

  # boot_disk {
  #   initialize_params {
  #     # Указать id образа созданного в предыдущем домашем задании
  #     image_id = var.image_id
  #   }
  # }




  # network_interface {
  #   # Указан id подсети default-ru-central1-a
  #   # subnet_id = var.subnet_id
  #   subnet_id = yandex_vpc_subnet.app-subnet.id
  #   nat       = true
  # }

  # metadata = {
  #   ssh-keys = "ubuntu:${file(var.public_key_path)}"
  # }

  #  metadata = {
  #  ssh-keys = "ubuntu:${file("~/.ssh/ubuntu.pub")}"
  #  }

  #   boot_disk {
  #     initialize_params {
  #       # Указать id образа созданного в предыдущем домашем задании
  #       image_id = "fd8ghhdgcsifcp2cpiol"
  #     }
  #   }

  #   network_interface {
  #     # Указан id подсети default-ru-central1-a
  #     subnet_id = "e9bl38q6mpiv22md4u65"
  #     nat       = true
  #   }
  # ----------------------------------------------------------------
  # connection {
  #   type  = "ssh"
  #   # host  = yandex_compute_instance.app.network_interface.0.nat_ip_address
  #   host  = self.network_interface[0].nat_ip_address
  #   user  = "ubuntu"
  #   agent = false
  #   # путь до приватного ключа
  #   # private_key = file("~/.ssh/ubuntu")
  #   private_key = file(var.private_key_for_conn_provisioner)
  # }



  # provisioner "file" {
  #   source      = "files/puma.service"
  #   destination = "/tmp/puma.service"
  # }

  # provisioner "remote-exec" {
  #   script = "files/deploy.sh"
  # }
# ----------------------------------------------------------------


# }
