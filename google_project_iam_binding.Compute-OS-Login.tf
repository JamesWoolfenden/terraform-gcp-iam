resource "google_project_iam_binding" "Compute-OS-Login" {
  project = var.project
  role    = "roles/compute.osLogin"

  members = var.oslogins
}
