resource "yandex_compute_instance" "vm-1" {
  name = "chapter-5-prac-2-student-013-20"
  #scheduling_policy = ""
  platform_id = var.platform_id
  zone = var.zone

  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size = var.size
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    user-data = "${file("${path.module}/meta.txt")}"
  }
}
