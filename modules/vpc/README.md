## Providers

| Name | Version |
| ---- | ------- |
| aws  | n/a     |

## Inputs

| Name          | Description | Type     | Default     | Required |
| ------------- | ----------- | -------- | ----------- | :------: |
| cidr          | n/a         | `any`    | n/a         |   yes    |
| dns_hostnames | n/a         | `string` | `"true"`    |    no    |
| dns_support   | n/a         | `string` | `"true"`    |    no    |
| name          | n/a         | `any`    | n/a         |   yes    |
| tenancy       | n/a         | `string` | `"default"` |    no    |

## Outputs

| Name          | Description |
| ------------- | ----------- |
| dns_hostnames | n/a         |
| dns_support   | n/a         |
| id            | n/a         |
| tenancy       | n/a         |
| vpc_cidr      | n/a         |
