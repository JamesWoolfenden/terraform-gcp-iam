resource "google_project_iam_binding" "compute_os_admin_login" {
  project = var.project
  role    = "roles/compute.osAdminLogin"

  members = var.osadminlogins

  dynamic "condition" {
    for_each = var.osadminlogin_condition == null ? [] : [var.osadminlogin_condition]
    content {
      title       = condition.value.title
      description = condition.value.description
      expression  = condition.value.expression
    }
  }
}
