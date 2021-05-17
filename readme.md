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

Copyright © 2021 James Woolfenden

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

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage] |

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-gcp-iam&url=https://github.com/JamesWoolfenden/terraform-gcp-iam
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-gcp-iam&url=https://github.com/JamesWoolfenden/terraform-gcp-iam
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-gcp-iam
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-gcp-iam
[share_email]: mailto:?subject=terraform-gcp-iam&body=https://github.com/JamesWoolfenden/terraform-gcp-iam
