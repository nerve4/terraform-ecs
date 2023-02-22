# -----------------------------------------------
# Variables for ECS
# -----------------------------------------------
variable "project_name" {
  type        = string
  description = "The Project Name."
}

variable "environment" {
  type        = string
  description = "The name of the environment that is created."
}

variable "logs_retention_period_in_days" {
  type        = number
  description = "The number of days CloudWatch logs are retained."
  default     = 30
}

variable "acp_test_ag_arn" {
  type        = string
  description = "The 1st autoscaling group arn."
}

variable "acp_test_termination_protection" {
  type        = string
  description = "The 1st autoscaling group termination protection."
  default     = "DISABLED"
}

variable "acp_test_maximum_scaling" {
  type        = number
  description = "The 1st autoscaling group maximum scaling value."
  default     = 5
}

variable "acp_test_minimum_scaling" {
  type        = number
  description = "The 1st autoscaling group minimum scaling value."
  default     = 1
}

variable "acp_test_target_capacity" {
  type        = number
  description = "The 1st autoscaling group target capacity value."
  default     = 60
}

variable "acp_test_dcps_weight" {
  type        = number
  description = "The 1st autoscaling group default capacity provider strategy weight value."
  default     = 60
}

variable "acp_test_dcps_base" {
  type        = number
  description = "The 1st autoscaling group default capacity provider strategy base value."
  default     = 20
}

variable "tags" {
  type        = map(string)
  description = "Tags assigned to the created resources."
}
