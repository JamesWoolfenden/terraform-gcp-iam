# terraform-gcp-iam

[![Build Status](https://github.com/JamesWoolfenden/terraform-gcp-iamworkflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-gcp-iam)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-gcp-iam.svg)](https://github.com/JamesWoolfenden/terraform-gcp-iam/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| google | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [google_iam_role](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/iam_role) |
| [google_project_iam_binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| browsers | n/a | `list(any)` | n/a | yes |
| osadminlogins | n/a | `list(any)` | n/a | yes |
| oslogins | n/a | `list(any)` | n/a | yes |
| project | The GCP project to run against | `string` | n/a | yes |
| region | GCP region | `string` | n/a | yes |
| serviceAccountUsers | n/a | `list(any)` | n/a | yes |
| storageadmins | n/a | `list(any)` | n/a | yes |
| viewers | n/a | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| included\_permissions | n/a |
| stage | n/a |
| title | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
