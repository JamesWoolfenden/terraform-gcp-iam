resource "google_service_account" "service_account_users" {
  project      = var.project
  account_id   = var.service_account_account_id
  display_name = "Service account scoped for roles/iam.serviceAccountUser grants"
}
