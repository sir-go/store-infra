variable "image_id" {
  type    = string
  default = "-----"
}

variable "users_file" {
  type    = string
  default = "./users.yml"
}

variable "vm_amount" {
  type    = number
  default = 1
}

variable "yc_token" {
  description = "yandex cloud token"
  type        = string
  sensitive   = true
}

//noinspection TFIncorrectVariableType
variable "yc" {
  type    = map
  default = {
    cloud_id : "-----"
    folder_id : "------"
  }
}

variable "yc_zones" {
  type    = list(string)
  default = [
    "ru-central1-a",
    "ru-central1-b"
  ]
}

variable "yc_subnets" {
  type    = list(string)
  default = [
    "-------",
    "-------"
  ]
}
