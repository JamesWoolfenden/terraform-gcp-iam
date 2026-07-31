# terraform-gcp-iam

[![Build Status](https://github.com/JamesWoolfenden/terraform-gcp-iamworkflows/Verify/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-gcp-iam)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-gcp-iam.svg)](https://github.com/JamesWoolfenden/terraform-gcp-iam/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [google_project_iam_binding.browser](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_project_iam_binding.compute_os_admin_login](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_project_iam_binding.compute_os_login](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_project_iam_binding.storage_admin](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_project_iam_binding.viewer](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_service_account.service_account_users](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_service_account_iam_binding.service_account_users](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_binding) | resource |
| [google_iam_role.roleinfo](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/iam_role) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_browsers"></a> [browsers](#input\_browsers) | List of users for this role | `list(any)` | n/a | yes |
| <a name="input_osadminlogin_condition"></a> [osadminlogin\_condition](#input\_osadminlogin\_condition) | Optional IAM condition scoping the roles/compute.osAdminLogin grant, e.g. to specific instances via a CEL expression on resource.name. Leave null (default) to grant project-wide. | <pre>object({<br/>    title       = string<br/>    description = optional(string)<br/>    expression  = string<br/>  })</pre> | `null` | no |
| <a name="input_osadminlogins"></a> [osadminlogins](#input\_osadminlogins) | List of users for this role | `list(any)` | n/a | yes |
| <a name="input_oslogin_condition"></a> [oslogin\_condition](#input\_oslogin\_condition) | Optional IAM condition scoping the roles/compute.osLogin grant, e.g. to specific instances via a CEL expression on resource.name. Leave null (default) to grant project-wide. | <pre>object({<br/>    title       = string<br/>    description = optional(string)<br/>    expression  = string<br/>  })</pre> | `null` | no |
| <a name="input_oslogins"></a> [oslogins](#input\_oslogins) | List of users for this role | `list(any)` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The GCP project to run against | `string` | n/a | yes |
| <a name="input_service_account_account_id"></a> [service\_account\_account\_id](#input\_service\_account\_account\_id) | account\_id (the local part of the email, e.g. "ci-runner") for the service account that roles/iam.serviceAccountUser is scoped to | `string` | n/a | yes |
| <a name="input_service_account_users"></a> [service\_account\_users](#input\_service\_account\_users) | List of users for this role | `list(any)` | n/a | yes |
| <a name="input_storageadmins"></a> [storageadmins](#input\_storageadmins) | List of users for this role | `list(any)` | n/a | yes |
| <a name="input_viewers"></a> [viewers](#input\_viewers) | List of users for this role | `list(any)` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_included_permissions"></a> [included\_permissions](#output\_included\_permissions) | Include permissions |
| <a name="output_stage"></a> [stage](#output\_stage) | Stage of the role |
| <a name="output_title"></a> [title](#output\_title) | Role Title |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Role and Permissions

<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Terraform resource required is:

```golang
# apply role
resource "google_project_iam_custom_role" "terraform_pike" {
  project     = "pike-477416"
  role_id     = "terraform_pike"
  title       = "terraform_pike"
  description = "A user with least privileges"
  permissions = [
    "iam.serviceAccounts.create",
    "iam.serviceAccounts.delete",
    "iam.serviceAccounts.get",
    "iam.serviceAccounts.getIamPolicy",
    "iam.serviceAccounts.setIamPolicy",
    "iam.serviceAccounts.update",
    "resourcemanager.projects.getIamPolicy",
    "resourcemanager.projects.setIamPolicy"
  ]
}

# plan role
resource "google_project_iam_custom_role" "terraform_pike_plan" {
  project     = "pike-477416"
  role_id     = "terraform_pike_plan"
  title       = "terraform_pike_plan"
  description = "A user with least privileges"
  permissions = [
    "iam.serviceAccounts.get",
    "iam.serviceAccounts.getIamPolicy",
    "resourcemanager.projects.getIamPolicy"
  ]
}


```
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-gcp-iam/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-gcp-iam/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2021-26 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
