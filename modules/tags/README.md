# aws-tags

# Module `./aws-tags`

Core Version Constraints:
* `>= 0.12.3`

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
# Terraform :: Tags

This repository includes terraform module for tags in order to make tags standardised for all resources that is being created
by terraform.

## Usage

Please refer to [test](tests/) section.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| business\_unit | EDFE :: Business Unit | `string` | `"Finance"` | no |
| cost\_centre | EDFE :: Cost Centre | `string` | `"TABB"` | no |
| creator | EDFE :: Creator of the Resource | `string` | `"Terraform via CD Pipeline"` | no |
| edfe\_environment | EDFE :: Environment | `string` | `"Production"` | no |
| environment | Used to distinguish between dev and prod infrastructure | `string` | `"dev"` | no |
| major\_function | EDFE :: Major Function | `string` | `"Enterprise IT"` | no |
| name | The name for the resource | `any` | n/a | yes |
| project | Used to identify the project | `string` | `"eit"` | no |
| service | EDFE :: Service (same as Project) | `string` | `"eit"` | no |
| service\_level | EDFE :: Service Level | `string` | `"Bronze"` | no |
| tags | Tags to be merged with the default tag map | `map(string)` | `{}` | no |
| work\_order | EDFE :: Work Order | `string` | `"6C040440"` | no |

## Outputs

| Name | Description |
|------|-------------|
| s3objtags | Map of tags |
| tags | Map of tags |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
