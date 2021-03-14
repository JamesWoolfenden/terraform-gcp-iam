variable "project" {
  description = "The GCP project to run against"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "browsers" {
  type = list(any)
}

variable "viewers" {
  type = list(any)
}

variable "storageadmins" {
  type = list(any)
}

variable "oslogins" {
  type = list(any)
}

variable "osadminlogins" {
  type = list(any)
}

variable "serviceAccountUsers" {
  type = list(any)
}
