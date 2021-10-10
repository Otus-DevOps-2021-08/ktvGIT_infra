output "external_ip_address_app" {
  value = yandex_compute_instance.app.network_interface.0.nat_ip_address
}
#Если ставить балансировщик, но тогда ансибл в первом задани не  распарит адреса
# output "external_ip_address_app" {
#   value = [yandex_compute_instance.app.*.network_interface.0.nat_ip_address]
# }
