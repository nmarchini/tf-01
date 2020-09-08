variable "name" {
  description = "The name for the resource"
}

variable "environment" {
  description = "Used to distinguish between dev and prod infrastructure"
  default     = "dev"
}

variable "project" {
  description = "Used to identify the project"
  default     = "eit"
}

variable "business_unit" {
  description = "SERL :: Business Unit"
  default     = "Finance"
}

variable "cost_centre" {
  description = "SERL :: Cost Centre"
  default     = "TABB"
}

variable "serl_environment" {
  description = "SERL :: Environment"
  default     = "Production"
}

variable "major_function" {
  description = "SERL :: Major Function"
  default     = "Enterprise IT"
}

variable "service" {
  description = "SERL :: Service (same as Project)"
  default     = "eit"
}

variable "work_order" {
  description = "SERL :: Work Order"
  default     = "6C040440"
}

variable "service_level" {
  description = "SERL :: Service Level"
  default     = "Bronze"
}

variable "creator" {
  description = "SERL :: Creator of the Resource"
  default     = "Terraform via CD Pipeline"
}

variable "tags" {
  type        = map(string)
  description = "Tags to be merged with the default tag map"
  default = {
  }
}
