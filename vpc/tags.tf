module "tags" {
  source           = "../modules/tags"
  name             = var.project
  cost_centre      = var.cost_centre
  serl_environment = var.environment
  environment      = var.environment
  project          = var.project
  service          = var.project
  work_order       = var.work_order
  major_function   = var.major_function
  business_unit    = var.business_unit
  service_level    = var.service_level
  creator          = "Terraform via CD pipeline"
  #tags             = { deployed_environment : var.APP_REGION }
}
