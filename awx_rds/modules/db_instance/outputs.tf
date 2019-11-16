locals {
  default_db_instance_address           = element(concat(aws_db_instance.default_mssql.*.address, aws_db_instance.default.*.address, [""]), 0)
  default_db_instance_arn               = element(concat(aws_db_instance.default_mssql.*.arn, aws_db_instance.default.*.arn, [""]), 0)
  default_db_instance_availability_zone = element(concat(aws_db_instance.default_mssql.*.availability_zone, aws_db_instance.default.*.availability_zone, [""]), 0)
  default_db_instance_endpoint          = element(concat(aws_db_instance.default_mssql.*.endpoint, aws_db_instance.default.*.endpoint, [""]), 0)
  default_db_instance_hosted_zone_id    = element(concat(aws_db_instance.default_mssql.*.hosted_zone_id, aws_db_instance.default.*.hosted_zone_id, [""]), 0)
  default_db_instance_id                = element(concat(aws_db_instance.default_mssql.*.id, aws_db_instance.default.*.id, [""]), 0)
  default_db_instance_resource_id       = element(concat(aws_db_instance.default_mssql.*.resource_id, aws_db_instance.default.*.resource_id, [""]), 0)
  default_db_instance_status            = element(concat(aws_db_instance.default_mssql.*.status, aws_db_instance.default.*.status, [""]), 0)
  default_db_instance_name              = element(concat(aws_db_instance.default_mssql.*.name, aws_db_instance.default.*.name, [""]), 0)
  default_db_instance_username          = element(concat(aws_db_instance.default_mssql.*.username, aws_db_instance.default.*.username, [""]), 0)
  default_db_instance_port              = element(concat(aws_db_instance.default_mssql.*.port, aws_db_instance.default.*.port, [""]), 0)
}

output "default_db_instance_address" {
  description = "The address of the RDS instance"
  value       = local.default_db_instance_address
}

output "default_db_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = local.default_db_instance_arn
}

output "default_db_instance_availability_zone" {
  description = "The availability zone of the RDS instance"
  value       = local.default_db_instance_availability_zone
}

output "default_db_instance_endpoint" {
  description = "The connection endpoint"
  value       = local.default_db_instance_endpoint
}

output "default_db_instance_hosted_zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)"
  value       = local.default_db_instance_hosted_zone_id
}

output "default_db_instance_id" {
  description = "The RDS instance ID"
  value       = local.default_db_instance_id
}

output "default_db_instance_resource_id" {
  description = "The RDS Resource ID of default instance"
  value       = local.default_db_instance_resource_id
}

output "default_db_instance_status" {
  description = "The RDS instance status"
  value       = local.default_db_instance_status
}

output "default_db_instance_name" {
  description = "The database name"
  value       = local.default_db_instance_name
}

output "default_db_instance_username" {
  description = "The master username for the database"
  value       = local.default_db_instance_username
}

output "default_db_instance_port" {
  description = "The database port"
  value       = local.default_db_instance_port
}
