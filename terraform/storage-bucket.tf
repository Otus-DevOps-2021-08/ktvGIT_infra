terraform {
backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraform-stor"
    region     = "ru-central"
    key        = "terraform.tfstate"
    # access_key = "<идентификатор статического ключа>"
    access_key = "M-PaGlFzxm5hDpXpUNz9"

    # secret_key = "<секретный ключ>"
    secret_key = "ewhCrctDvmAKGCO2zGSUp6rO-XP8TIkuXyLMqWjN"


    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

# yc iam service-account list
# +----------------------+------+
# |          ID          | NAME |
# +----------------------+------+
# | aje2p57kr571u3oc2u8c | ktv  |
# | ajek641lg062vpm9md3k | ktv3 |
# +----------------------+------+

# [root@host1 terraform]# yc iam access-key create --service-account-name ktv3
# access_key:
#   id: ajepa8ufhbgeipih29pv
#   service_account_id: ajek641lg062vpm9md3k
#   created_at: "2021-10-03T04:40:38.842960687Z"
#   key_id: M-PaGlFzxm5hDpXpUNz9
# secret: ewhCrctDvmAKGCO2zGSUp6rO-XP8TIkuXyLMqWjN
