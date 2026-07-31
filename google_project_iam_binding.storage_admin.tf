moved {
  from = google_project_iam_binding.storageadmin
  to   = google_project_iam_binding.storage_admin
}

# holden:ignore:HLD_GCP_204: storage.admin is the intended scope for this binding — module callers control membership via var.storageadmins
resource "google_project_iam_binding" "storage_admin" {
  project = var.project
  role    = "roles/storage.admin"

  members = var.storageadmins
}
