resource "random_string" "main" {
  length  = 16
  upper   = false
  special = false
}

resource "google_service_account" "main" {
  account_id   = "gcp-${random_string.main.result}"
  display_name = "${var.environment_name}-${var.name}"
  project      = var.project
}
