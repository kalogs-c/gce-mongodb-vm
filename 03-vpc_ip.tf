data "google_compute_address" "mongo" {
  name         = var.ip_name
  project      = var.project_id
  region       = var.region
  address_type = var.address_type
}
