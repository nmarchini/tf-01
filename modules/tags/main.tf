/**
 * # Terraform :: Tags
 *
 * This repository includes terraform module for tags in order to make tags standardised for all resources that is being created
 * by terraform.
 *
 * ## Usage
 *
 * Please refer to [test](tests/) section.
 */

locals {
  default_tags = {
    "Name" : var.name,
    "Business Unit" : var.business_unit,
    "Cost Centre" : var.cost_centre,
    "Project Environment" : var.environment,
    "Environment" : var.serl_environment,
    "Project" : var.project,
    "Service" : var.service,
    "Work Order" : var.work_order,
    "Major Function" : var.major_function,
    "Service Level" : var.service_level,
    "Creator" : var.creator
  }

  s3_obj_tags = {
    "Name" : var.name,
    "Business Unit" : var.business_unit,
    "Cost Centre" : var.cost_centre,
    "Environment" : var.serl_environment,
    "Service" : var.service,
    "Work Order" : var.work_order,
    "Major Function" : var.major_function,
    "Service Level" : var.service_level,
    "Creator" : var.creator
  }

  merged_tags        = merge(local.default_tags, var.tags)
  merged_s3_obj_tags = merge(local.s3_obj_tags, var.tags)
}
