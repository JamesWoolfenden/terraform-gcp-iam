resource "google_project_iam_binding" "viewer" {
  project = var.project
  role    = "roles/viewer"

  members = var.viewers
}