# ktvGIT_infra

## For cloud-bastion.ovpn
ktvGIT Infra repository
bastion_IP = 62.84.114.168
someinternalhost_IP = 10.128.0.18

Вариант решения для подключения из консоли при помощи команды вида ssh someinternalhost из локальной консоли рабочего устройства:
1. windows: putty.exe -A appuser@<ip bastion> -i <path to>appuser.ppk -m <path to some file>run.sh -t
   ssh <ip someinternalhost> (line in run.sh)
2. Unix: ssh -i ~/.ssh/appuser -A -J appuser@<ip bastion> appuser@<ip someinternalhost>

## For cloud-testapp
testapp_IP = 62.84.114.85
testapp_port = 9292

## packer-base
Создан packer шаблонизированый образ на основани ubuntu16.json
Внутри mongodb ruby
Значения переменных шаблона вынесены в файл variables.json
variables.json занесен в .gitignore
variables.json.examples содеражат вымышленные значения

## terraform
https://www.terraform.io/docs/language/expressions/dynamic-blocks.html
https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/lb_network_load_balancer
