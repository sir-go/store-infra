resource "yandex_compute_instance" "vm" {
  count = var.vm_amount
  name = "p2-${count.index}"
  hostname = "p2-${count.index}"
  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  network_interface {
    subnet_id = var.yc_subnets[0]
    nat       = true
  }

  metadata = {
    serial-port-enable = 1
    user-data = file(var.users_file)
  }
}
