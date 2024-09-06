module "compute_engine" {
  source         = "./modules/compute_engine"
  instance_count = var.instance_count
  machine_type   = var.machine_type
  zones          = var.zones
  image          = var.image
  startup_script = var.startup_script_path
  tags           = var.tags
}

module "cloud_storage" {
  source      = "./modules/cloud_storage"
  bucket_name = "app-logs-${var.env}"
  location    = var.region
}

module "load_balancer" {
  source     = "./modules/cloud_lb"
  zone       = var.zone
  instances  = module.compute_engine.instance_ips
  port       = var.port
  port_range = tostring(var.port)
}
