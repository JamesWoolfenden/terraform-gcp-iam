# holden:ignore:HLD_GCP_058 — deliberate break-glass key for a system that cannot use
# Workload Identity Federation. Off by default (var.enable_break_glass_access = false) and
# private_key must be read straight into a secret store, never committed.
resource "google_service_account_key" "break_glass" {
  count = var.enable_break_glass_access ? 1 : 0

  service_account_id = google_service_account.service_account_users.name
  key_algorithm      = "KEY_ALG_RSA_2048"
  public_key_type    = "TYPE_X509_PEM_FILE"
  private_key_type   = "TYPE_GOOGLE_CREDENTIALS_FILE"
}
