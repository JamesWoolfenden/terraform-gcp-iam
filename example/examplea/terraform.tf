# holden:ignore:HLD_TF_004: example module has no state of its own, backend intentionally omitted
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.30.0"
    }
  }
  required_version = ">=1.5.0"
}
