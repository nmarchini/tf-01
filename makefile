# Makefile to kickoff terraform.
# ####################################################
#
#STATEBUCKET = slalom-lon-aws-admin
#STATELOCKTABLE = slalom-lon-aws-admin
STATEKEY = $(STATE)/terraform.tfstate
#STATEREGION = eu-west-2

ifndef  ENVIRONMENT
override ENVIRONMENT = dev
endif


# # Before we start test that we have the mandatory executables available
	EXECUTABLES = git terraform
	K := $(foreach exec,$(EXECUTABLES),\
		$(if $(shell which $(exec)),some string,$(error "No $(exec) in PATH, consider apt-get install $(exec)")))


.PHONY: plan

init:
	@echo "initialize state file"
	cd $(STATE) && \
	terraform init \
	-var-file="../env/${ENVIRONMENT}/terraform.tfvars" \
	-var-file="../common/common.tfvars"
#terraform workspace select $(WORKSPACE) || terraform workspace new $(WORKSPACE) && \
## --force-copy -backend-config="bucket=$(STATEBUCKET)" -backend-config="key=$(STATEKEY)" -backend-config="dynamodb_table=$(STATELOCKTABLE)" -backend-config="region=$(STATEREGION)"

validate: init
	@echo "running terraform validate"
	cd $(STATE) && \
	terraform validate \

plan: validate
	@echo "running terraform plan"
	cd $(STATE) && \
	terraform plan \
	-lock=false \
	-var-file="../env/${ENVIRONMENT}/terraform.tfvars" \
	-var-file="../common/common.tfvars"

apply: plan
	@echo "running terraform apply"
	cd $(STATE) && \
	terraform apply \
	-lock=false \
	-var-file="../env/${ENVIRONMENT}/terraform.tfvars" \
	-var-file="../common/common.tfvars"

plan-destroy: validate
	@echo "running terraform plan -destroy"
	cd $(STATE) && \
	terraform plan -destroy \
	-var-file="../env/${ENVIRONMENT}/terraform.tfvars" \
	-var-file="../common/common.tfvars"

destroy: init
	@echo "running terraform destroy"
	cd $(STATE) && \
	terraform destroy -force \
	-var-file="../env/${ENVIRONMENT}/terraform.tfvars" \
	-var-file="../common/common.tfvars"
