variable "project" {
  description = "The GCP project to run against"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "browsers" {
  type = list
}

variable "viewers" {
  type = list
}

variable "storageadmins" {
  type = list
}

variable "oslogins" {
  type = list
}

variable "osadminlogins" {
  type = list
}

variable "serviceAccountUsers" {
  type = list
}

