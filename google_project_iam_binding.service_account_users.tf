resource "google_service_account_iam_binding" "service_account_users" {
  service_account_id = google_service_account.service_account_users.name
  role               = "roles/iam.serviceAccountUser"
  members            = var.service_account_users
}
