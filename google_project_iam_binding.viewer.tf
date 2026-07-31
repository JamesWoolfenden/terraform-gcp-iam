resource "google_project_iam_binding" "viewer" {
  # checkov:skip=CKV_GCP_117: viewer
  # holden:ignore:HLD_GCP_044 — roles/viewer is intentional here
  project = var.project
  role    = "roles/viewer"

  members = var.viewers
}
