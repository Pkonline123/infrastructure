terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  cloud_id  = "b1g3jddf4nv5e9okle7p"
  folder_id = "b1g2m7136g982ot032pf"
  zone      = "ru-central1-a"
}
resource "yandex_compute_instance" "vm-1" {
  name = "prac-2-student-013-20"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      #image_id = "fd8htuc6bfu35rt5476e"
      image_id = "fd80qm01ah03dkqb14lc"
    }
  }

  network_interface {
    subnet_id = "e9bi95vd74f8lp1mgdvm"
    nat       = false
  }

  metadata = {
    #ssh-keys = "ubuntu:${file("/home/student/.ssh/id_rsa.pub")}"
    #ssh-keys = "${file("./meta.txt")}"
    user-data = "${file("${path.module}/meta.txt")}"
  }
}

output "ip_address" {
  value = yandex_compute_instance.vm-1.network_interface.0.ip_address
}
