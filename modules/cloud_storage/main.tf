resource "random_id" "bucket_id" {
  byte_length = 8
}

resource "google_storage_bucket" "bucket" {
  name     = "${var.bucket_name}-${random_id.bucket_id.hex}"
  location = var.location
  uniform_bucket_level_access = true
}
