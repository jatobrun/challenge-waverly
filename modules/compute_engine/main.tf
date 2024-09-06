resource "google_compute_instance" "web_server" {
  count        = var.instance_count
  name         = "web-server-${count.index}"
  machine_type = var.machine_type
  zone         = element(var.zones, count.index)

  tags = var.tags

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  metadata_startup_script = file(var.startup_script)

  network_interface {
    network = "default"
  }
}
