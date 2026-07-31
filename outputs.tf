
output "included_permissions" {
  value       = data.google_iam_role.roleinfo.included_permissions
  description = "Include permissions"
}

output "stage" {
  value       = data.google_iam_role.roleinfo.stage
  description = "Stage of the role"
}

output "title" {
  value       = data.google_iam_role.roleinfo.title
  description = "Role Title"
}
