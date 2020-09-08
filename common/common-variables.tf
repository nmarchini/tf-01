variable "project" {
  description = "The name of the project"
}

variable "environment" {
  description = "The name of the environment"
}

variable "region" {
  default     = "eu-west-1"
  description = "Region parameter used in IAM policies"
}

variable "work_order" {
  default     = "TABB"
  description = "The work order for this project"
}

variable "cost_centre" {
  type        = string
  description = "The SERL cost centre for this project"
}

variable "business_unit" {
  type        = string
  description = "The SERL Business Unit that owns the resource"
}

variable "major_function" {
  type        = string
  description = "The SERL department within a Business Unit"
}

variable "service_level" {
  default     = "Bronze"
  description = "The service level for this project"
}
