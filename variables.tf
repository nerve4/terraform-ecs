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

variable "tags" {
  type        = map(string)
  description = "Tags assigned to the created resources."
}
