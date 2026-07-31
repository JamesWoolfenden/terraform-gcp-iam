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
  description = "List of users for this role"

  validation {
    condition     = alltrue([for m in var.browsers : can(regex("^(user|group|serviceAccount|domain):", m))])
    error_message = "Each member must be prefixed with user:, group:, serviceAccount: or domain:."
  }
}

variable "viewers" {
  type        = list(any)
  description = "List of users for this role"

  validation {
    condition     = alltrue([for m in var.viewers : can(regex("^(user|group|serviceAccount|domain):", m))])
    error_message = "Each member must be prefixed with user:, group:, serviceAccount: or domain:."
  }
}

variable "storageadmins" {
  type        = list(any)
  description = "List of users for this role"

  validation {
    condition     = alltrue([for m in var.storageadmins : can(regex("^(user|group|serviceAccount|domain):", m))])
    error_message = "Each member must be prefixed with user:, group:, serviceAccount: or domain:."
  }
}

variable "oslogins" {
  type = list(any)

  description = "List of users for this role"

  validation {
    condition     = alltrue([for m in var.oslogins : can(regex("^(user|group|serviceAccount|domain):", m))])
    error_message = "Each member must be prefixed with user:, group:, serviceAccount: or domain:."
  }
}

variable "oslogin_condition" {
  type = object({
    title       = string
    description = optional(string)
    expression  = string
  })
  default     = null
  description = "Optional IAM condition scoping the roles/compute.osLogin grant, e.g. to specific instances via a CEL expression on resource.name. Leave null (default) to grant project-wide."

  validation {
    condition     = var.oslogin_condition == null || (length(var.oslogin_condition.title) > 0 && length(var.oslogin_condition.expression) > 0)
    error_message = "oslogin_condition, when set, must include a non-empty title and expression."
  }
}

variable "osadminlogins" {
  type = list(any)

  description = "List of users for this role"

  validation {
    condition     = alltrue([for m in var.osadminlogins : can(regex("^(user|group|serviceAccount|domain):", m))])
    error_message = "Each member must be prefixed with user:, group:, serviceAccount: or domain:."
  }
}

variable "osadminlogin_condition" {
  type = object({
    title       = string
    description = optional(string)
    expression  = string
  })
  default     = null
  description = "Optional IAM condition scoping the roles/compute.osAdminLogin grant, e.g. to specific instances via a CEL expression on resource.name. Leave null (default) to grant project-wide."

  validation {
    condition     = var.osadminlogin_condition == null || (length(var.osadminlogin_condition.title) > 0 && length(var.osadminlogin_condition.expression) > 0)
    error_message = "osadminlogin_condition, when set, must include a non-empty title and expression."
  }
}

variable "service_account_users" {
  type = list(any)

  description = "List of users for this role"

  validation {
    condition     = alltrue([for m in var.service_account_users : can(regex("^(user|group|serviceAccount|domain):", m))])
    error_message = "Each member must be prefixed with user:, group:, serviceAccount: or domain:."
  }
}

variable "service_account_account_id" {
  type        = string
  description = "account_id (the local part of the email, e.g. \"ci-runner\") for the service account that roles/iam.serviceAccountUser is scoped to"

  validation {
    condition     = can(regex("^[a-z][a-z0-9-]{5,29}$", var.service_account_account_id))
    error_message = "service_account_account_id must be 6-30 characters, lowercase letters, digits and hyphens, starting with a letter."
  }
}
