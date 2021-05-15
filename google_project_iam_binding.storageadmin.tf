resource "google_project_iam_binding" "storageadmin" {
  project = var.project
  role    = "roles/storageadmin"

  members = var.storageadmins
}
