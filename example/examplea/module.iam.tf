module "iam" {
  source              = "../../"
  oslogins            = var.oslogins
  osadminlogins       = var.osadminlogins
  serviceAccountUsers = var.serviceAccountUsers
  project             = var.project
  region              = var.region
  browsers            = var.browsers
  viewers             = var.viewers
  storageadmins       = var.storageadmins
  #common_tags = var.common_tags
}
