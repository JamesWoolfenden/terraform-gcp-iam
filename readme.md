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
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_project_iam_binding.Compute-OS-Admin-Login](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_project_iam_binding.Compute-OS-Login](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_project_iam_binding.browser](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_project_iam_binding.serviceAccountUsers](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_project_iam_binding.storageadmin](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_project_iam_binding.viewer](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_iam_role.roleinfo](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/iam_role) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_browsers"></a> [browsers](#input\_browsers) | n/a | `list(any)` | n/a | yes |
| <a name="input_osadminlogins"></a> [osadminlogins](#input\_osadminlogins) | n/a | `list(any)` | n/a | yes |
| <a name="input_oslogins"></a> [oslogins](#input\_oslogins) | n/a | `list(any)` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The GCP project to run against | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | GCP region | `string` | n/a | yes |
| <a name="input_serviceAccountUsers"></a> [serviceAccountUsers](#input\_serviceAccountUsers) | n/a | `list(any)` | n/a | yes |
| <a name="input_storageadmins"></a> [storageadmins](#input\_storageadmins) | n/a | `list(any)` | n/a | yes |
| <a name="input_viewers"></a> [viewers](#input\_viewers) | n/a | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_included_permissions"></a> [included\_permissions](#output\_included\_permissions) | n/a |
| <a name="output_stage"></a> [stage](#output\_stage) | n/a |
| <a name="output_title"></a> [title](#output\_title) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
