
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

output "break_glass_private_key" {
  value       = try(google_service_account_key.break_glass[0].private_key, null)
  description = "Base64 encoded private key of the break-glass service account key, null when var.enable_break_glass_access is false"
  sensitive   = true
}
