resource "google_project_iam_binding" "Compute-OS-Admin-Login" {
  project = var.project
  role    = "roles/compute.osAdminLogin"

  members = var.osadminlogins
}