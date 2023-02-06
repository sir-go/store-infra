terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.75.0"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "tfstate"
    region     = "ru-central1"
    key        = "vm/.tfstate"
    access_key = "---------"
    secret_key = "---------"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = var.yc_token
  cloud_id  = var.yc.cloud_id
  folder_id = var.yc.folder_id
  zone      = var.yc_zones[0]
}
