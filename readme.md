[![Slalom][logo]](https://slalom.com)

# terraform-gcp-iam [![Build Status](https://api.travis-ci.com/JamesWoolfenden/terraform-gcp-iam.svg?branch=master)](https://travis-ci.com/JamesWoolfenden/terraform-gcp-iam) [![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-gcp-iam.svg)](https://github.com/JamesWoolfenden/terraform-gcp-iam/releases/latest)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| browsers |  | list | n/a | yes |
| osadminlogins |  | list | n/a | yes |
| oslogins |  | list | n/a | yes |
| project | The GCP project to run against | string | n/a | yes |
| region | GCP region | string | n/a | yes |
| serviceAccountUsers |  | list | n/a | yes |
| storageadmins |  | list | n/a | yes |
| viewers |  | list | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| included\_permissions |  |
| stage |  |
| title |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
