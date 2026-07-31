# holden:ignore:HLD_TF_026 — examples intentionally use ../../ to reference the local module root
module "iam" {
  source                     = "../../"
  oslogins                   = var.oslogins
  osadminlogins              = var.osadminlogins
  service_account_users      = var.service_account_users
  project                    = var.project
  browsers                   = var.browsers
  viewers                    = var.viewers
  storageadmins              = var.storageadmins
  service_account_account_id = var.service_account_account_id
  #common_tags = var.common_tags
}
