data "google_iam_role" "roleinfo" {
  name = "roles/compute.viewer"
}

output "included_permissions" {
  value = data.google_iam_role.roleinfo.included_permissions
}

output "stage" {
  value = data.google_iam_role.roleinfo.stage
}

output "title" {
  value = data.google_iam_role.roleinfo.title
}