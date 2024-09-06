output "instance_ips" {
  value = google_compute_instance.web_server[*].network_interface[0].network_ip
}
