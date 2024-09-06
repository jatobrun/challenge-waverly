resource "google_compute_instance_group" "web_server_group" {
  name = "web-server-group"
  zone = var.zone
  
  instances = var.instances
}

resource "google_compute_health_check" "http_health_check" {
  name               = "http-health-check"
  http_health_check {
    port = var.port
  }
}

resource "google_compute_backend_service" "default" {
  name = "default-backend-service"

  backend {
    group = google_compute_instance_group.web_server_group.self_link
  }

  health_checks = [google_compute_health_check.http_health_check.id]
  port_name      = "http"
}

resource "google_compute_url_map" "default" {
  name = "default-url-map"

  default_service = google_compute_backend_service.default.self_link
}

resource "google_compute_target_http_proxy" "default" {
  name    = "default-http-proxy"
  url_map = google_compute_url_map.default.self_link
}

resource "google_compute_global_forwarding_rule" "default" {
  name       = "default-forwarding-rule"
  target     = google_compute_target_http_proxy.default.self_link
  port_range = var.port_range
}
