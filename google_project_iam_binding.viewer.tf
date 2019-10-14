resource "google_project_iam_binding" "browser" {
  project = var.project
  role    = "roles/browser"

  members = var.browsers
}