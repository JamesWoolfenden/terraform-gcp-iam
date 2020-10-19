resource "google_project_iam_binding" "viewer" {
  #checkov:skip= CKV_GCP_41: "Ensure that IAM users are not assigned the Service Account User or Service Account Token Creator roles at project level"
  #checkov:skip=CKV_GCP_49: "Ensure no roles that enable to impersonate and manage all service accounts are used at a project level"
  project = var.project
  role    = "roles/viewer"

  members = var.viewers
}
