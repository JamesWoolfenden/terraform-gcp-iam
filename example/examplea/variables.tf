variable "project" {
  description = "The GCP project to run against"
  type        = string

  validation {
    condition     = length(var.project) > 0
    error_message = "project must not be empty."
  }
}


variable "browsers" {
  type        = list(any)
  description = "List of users for the roles/browser binding"

  validation {
    condition     = alltrue([for m in var.browsers : can(regex("^(user|group|serviceAccount|domain):", m))])
    error_message = "Each member must be prefixed with user:, group:, serviceAccount: or domain:."
  }
}

variable "viewers" {
  type        = list(any)
  description = "List of users for the roles/viewer binding"

  validation {
    condition     = alltrue([for m in var.viewers : can(regex("^(user|group|serviceAccount|domain):", m))])
    error_message = "Each member must be prefixed with user:, group:, serviceAccount: or domain:."
  }
}

variable "storageadmins" {
  type        = list(any)
  description = "List of users for the roles/storage.admin binding"

  validation {
    condition     = alltrue([for m in var.storageadmins : can(regex("^(user|group|serviceAccount|domain):", m))])
    error_message = "Each member must be prefixed with user:, group:, serviceAccount: or domain:."
  }
}

variable "oslogins" {
  type        = list(any)
  description = "List of users for the roles/compute.osLogin binding"

  validation {
    condition     = alltrue([for m in var.oslogins : can(regex("^(user|group|serviceAccount|domain):", m))])
    error_message = "Each member must be prefixed with user:, group:, serviceAccount: or domain:."
  }
}

variable "osadminlogins" {
  type        = list(any)
  description = "List of users for the roles/compute.osAdminLogin binding"

  validation {
    condition     = alltrue([for m in var.osadminlogins : can(regex("^(user|group|serviceAccount|domain):", m))])
    error_message = "Each member must be prefixed with user:, group:, serviceAccount: or domain:."
  }
}

variable "service_account_users" {
  type        = list(any)
  description = "List of users for the roles/iam.serviceAccountUser binding"

  validation {
    condition     = alltrue([for m in var.service_account_users : can(regex("^(user|group|serviceAccount|domain):", m))])
    error_message = "Each member must be prefixed with user:, group:, serviceAccount: or domain:."
  }
}

variable "service_account_account_id" {
  type        = string
  description = "account_id for the service account that roles/iam.serviceAccountUser is scoped to"

  validation {
    condition     = can(regex("^[a-z][a-z0-9-]{5,29}$", var.service_account_account_id))
    error_message = "service_account_account_id must be 6-30 characters, lowercase letters, digits and hyphens, starting with a letter."
  }
}
