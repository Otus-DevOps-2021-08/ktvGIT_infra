resource "yandex_compute_instance" "app" {
  name = "reddit-app"
  #Если ставить балансировщик, но тогда ансибл в первом задани не  распарит адреса
  # count = var.app_instances_count
  # name = "reddit-app${count.index}"

  labels = {
    tags = "reddit-app"
  }
  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.app_disk_image
    }
  }

  network_interface {
    # subnet_id = yandex_vpc_subnet.app-subnet.id
      subnet_id = var.subnet_id
    nat = true
  }

  metadata = {
  ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

#Ставим приложение
# connection {
#     type        = "ssh"
#     host        = self.network_interface.0.nat_ip_address
#     user        = "ubuntu"
#     agent       = false
#     private_key = file(var.private_key_for_conn_provisioner)
#   }
#разные не рабочие способы  прокинуть адрес базы в приложение---------------------
  # provisioner "local-exec" {
  #   command = "echo 'DATABASE_URL=${var.database_url}:27017' > ${path.module}/files/app_env.conf.tmp"
  # }

  # provisioner "file" {
  #   source      = "${path.module}/files/app_env.conf.tmp"
  #   destination = "/tmp/app_env.conf"
  # }

#  provisioner "remote-exec" {
#     inline = [
#       "DATABASE_URL=${var.database_url}:27017"
#     ]
#   }
#--------------------------------------------------------
#  provisioner "remote-exec" {
#     inline = [
#       "echo 'DATABASE_URL=${var.database_url}:27017' > /tmp/app_env.conf"
#     ]
#   }

#   provisioner "file" {
#     source      = "${path.module}/files/puma.service"
#     destination = "/tmp/puma.service"
#   }

#   provisioner "remote-exec" {
#     script = "${path.module}/files/deploy.sh"
#   }


}
