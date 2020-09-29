terraform {
  # fix the provider version
  required_version = "~> 0.12.0"

  #add role_arn to use assumed roles to access the bucket

  backend "gcs" {
    bucket = "terraform-state-499800515462"
    prefix = "terraform/iam/dev"
  }
}
