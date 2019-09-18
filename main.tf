resource "random_string" "main" {
  length  = 16
  upper   = false
  special = false
}

resource "google_service_account" "main" {
  account_id   = var.name
  display_name = var.name
  project      = var.project
}
