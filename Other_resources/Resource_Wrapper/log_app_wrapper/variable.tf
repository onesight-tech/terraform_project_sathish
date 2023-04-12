variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "log_analytics_name" {
  type = string
}

variable "retention_in_days" {
  type = number
}

variable "daily_quota_gb" {
  type = number
}
variable "sku" {
  type = string
}
variable "app_insights_name" {
  type = string
}
variable "application_type" {
  type = string
}