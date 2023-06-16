resource "google_compute_instance" "mongo-vm" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = module.gce-container.source_image
    }
  }

  metadata = {
    gce-container-declaration = module.gce-container.metadata_value
  }

  labels = {
    container-vm = module.gce-container.vm_container_label
  }

  tags = ["container-vm-mongo"]

  network_interface {
    network = "default"
    access_config {
      nat_ip = data.google_compute_address.mongo.address
    }
  }
}
