# Makefile to kickoff terraform.
# ####################################################
#
#STATEBUCKET = slalom-lon-aws-admin
#STATELOCKTABLE = slalom-lon-aws-admin
STATEKEY = $(STATE)/terraform.tfstate
#STATEREGION = eu-west-2


# # Before we start test that we have the mandatory executables available
	EXECUTABLES = git terraform
	K := $(foreach exec,$(EXECUTABLES),\
		$(if $(shell which $(exec)),some string,$(error "No $(exec) in PATH, consider apt-get install $(exec)")))


.PHONY: plan

first-run:
	@echo "initialize remote state file"
	cd $(STATE) && \
	terraform init -backend-config="bucket=$(STATEBUCKET)" -backend-config="key=$(STATEKEY)" -backend-config="dynamodb_table=$(STATELOCKTABLE)" -backend-config="region=$(STATEREGION)"


init:
	@echo "initialize remote state file"
	cd $(STATE) && \
	terraform workspace select $(WORKSPACE) || terraform workspace new $(WORKSPACE) && \
	terraform init --force-copy -backend-config="bucket=$(STATEBUCKET)" -backend-config="key=$(STATEKEY)" -backend-config="dynamodb_table=$(STATELOCKTABLE)" -backend-config="region=$(STATEREGION)"

validate: init
	@echo "running terraform validate"
	cd $(STATE) && \
	terraform validate

plan: validate
	@echo "running terraform plan"
	cd $(STATE) && \
	terraform plan

apply: plan
	@echo "running terraform apply"
	cd $(STATE) && \
	terraform apply

plan-destroy: validate
	@echo "running terraform plan -destroy"
	cd $(STATE) && \
	terraform plan -destroy

destroy: init
	@echo "running terraform destroy"
	cd $(STATE) && \
	terraform destroy -force
