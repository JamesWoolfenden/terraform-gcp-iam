resource "google_project_iam_binding" "serviceAccountUsers" {
  project = var.project
  role    = "roles/iam.serviceAccountUser"

  members = var.serviceAccountUsers
}