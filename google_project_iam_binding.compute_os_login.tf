resource "google_project_iam_binding" "compute_os_login" {
  project = var.project
  role    = "roles/compute.osLogin"

  members = var.oslogins

  dynamic "condition" {
    for_each = var.oslogin_condition == null ? [] : [var.oslogin_condition]
    content {
      title       = condition.value.title
      description = condition.value.description
      expression  = condition.value.expression
    }
  }
}
