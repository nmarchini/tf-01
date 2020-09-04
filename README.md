# Deply a simple web application to AWS using Terraform & Ansible

As part of a workshop day run by Slalom & AWS addressing Cloud & DevOps. More information available in the lab document in this repo (AWS-DevOps-hands-on-lab.docx).

## Config

Pre-requisite requirements: AWS CLI, Terraform

Configure AWS credentials
```bash
aws configure [Enter]
AWS Access Key ID [None]: [Enter]
AWS Secret Access Key [None]: [Enter]
Default region name [None]: eu-west-2
Default output format [None]: json
```

### Terraform

1. Setup the S3 and DynamoDB backend

S3:
```bash
aws s3api create-bucket --acl private --bucket slalom0318-labuser<number> --region eu-west-2 --create-bucket-configuration LocationConstraint=eu-west-2
```

DynamoDB:
```bash
aws dynamodb create-table --table-name slalom0318-labuser<number> --attribute-definitions AttributeName=LockID,AttributeType=S --key-schema AttributeName=LockID,KeyType=HASH  --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
```

2. Replace the environment variables in the command below and run the init on the makefile, this 'first-run' will initialise terraform.
```bash
STATE=vpc WORKSPACE=slalom0318-labuser<number> STATEBUCKET=slalom0318-labuser<number> STATELOCKTABLE=slalom0318-labuser<number> STATEREGION=eu-west-2 make first-run
```

3. Next the Terraform workspace needs to be initialized, replace the <number> with your assigned labuser number. E.g labuser12.
```bash
STATE=vpc WORKSPACE=slalom0318-labuser<number> STATEBUCKET=slalom0318-labuser<number> STATELOCKTABLE=slalom0318-labuser<number> STATEREGION=eu-west-2 make init
```

4. Terraform plan vpc. From the command line execute the following command, replace the <number> with your assigned labuser number. E.g labuser12.
```bash
STATE=vpc WORKSPACE=slalom0318-labuser<number> STATEBUCKET=slalom0318-labuser<number> STATELOCKTABLE=slalom0318-labuser<number> STATEREGION=eu-west-2 make plan
```

5. Terraform apply vpc. From the command line execute the following command, replace the <number> with your assigned labuser number. E.g labuser12.
```bash
STATE=vpc WORKSPACE=slalom0318-labuser<number> STATEBUCKET=slalom0318-labuser<number> STATELOCKTABLE=slalom0318-labuser<number> STATEREGION=eu-west-2 make apply
```

6. Terraform plan app. From the command line execute the following command, replace the <number> with your assigned labuser number. E.g labuser12.
```bash
STATE=app WORKSPACE=slalom0318-labuser<number> STATEBUCKET=slalom0318-labuser<number> STATELOCKTABLE=slalom0318-labuser<number> STATEREGION=eu-west-2 make plan
```

6. Terraform apply app. From the command line execute the following command, replace the <number> with your assigned labuser number. E.g labuser12.
```bash
STATE=app WORKSPACE=slalom0318-labuser<number> STATEBUCKET=slalom0318-labuser<number> STATELOCKTABLE=slalom0318-labuser<number> STATEREGION=eu-west-2 make apply
```


### Ansible

1. Update inventory file
```bash
cd ansible
vim hosts
```
Add hostname/ip for your app servers and db server
```yaml
[appservers]
127.0.0.1

[dbservers]
127.0.0.1
```

2. Run Ansible playbook updating the values in '< >' below.
```bash
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook main.yml -private-key=~/path/to/key.pem -user <ADD USERNAME HERE> -i hosts -extra-vars "db_url=<ADD DB SERVER HOSTNAME HERE>"
```

All instances should now be provisioned and you should be able to access the web application via the load balancer URL outputted by Terraform.
