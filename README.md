# Deply a simple VPC to AWS using Terraform v12

This simple repo shows you how to use a module, use a makefile and have difference parameters for different environments (dev, Prod)

## Config

Pre-requisite requirements: AWS CLI, Terraform v12

Configure AWS credentials

```bash
aws configure [Enter]
AWS Access Key ID [None]: [Enter]
AWS Secret Access Key [None]: [Enter]
Default region name [None]: eu-west-2
Default output format [None]: json
```

### Terraform

1. Terraform needs to be initialized.

```bash
make init STATE=vpc
```

4. Terraform plan for vpc folder.

```bash
make plan STATE=vpc
```

5. Terraform apply for vpc folder.

```bash
make apply STATE=vpc
```
