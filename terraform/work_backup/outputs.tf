# output "external_ip_address_app" {
#   value = yandex_compute_instance.app.network_interface.0.nat_ip_address
# }


# Вывод адреса балансировщика
# output "external_lb_ip_address_app" {
#   value = tolist(tolist(yandex_lb_network_load_balancer.app_lb.listener)[0].external_address_spec)[0].address
# }


# output "external_port_app" {
#   value = var.external_app_port
# }

output "external_ip_address_app" {
value = yandex_compute_instance.app.network_interface.0.nat_ip_address
}
output "external_ip_address_db" {
value = yandex_compute_instance.db.network_interface.0.nat_ip_address
}
