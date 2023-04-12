module "log_insights" {
  source = "D:/Resource_module/log_app_project"
resource_group_name = var.resource_group_name
location = var.location
log_analytics_name = var.log_analytics_name
retention_in_days = var.retention_in_days
daily_quota_gb = var.daily_quota_gb
sku = var.sku
app_insights_name = var.app_insights_name
application_type = var.application_type
}