output "default_db_parameter_group_id" {
  description = "The db parameter group id"
  value       = element(concat(aws_db_parameter_group.default.*.id, aws_db_parameter_group.default_no_prefix.*.id, [""]), 0)
}

output "default_db_parameter_group_arn" {
  description = "The ARN of the db parameter group"
  value       = element(concat(aws_db_parameter_group.default.*.arn, aws_db_parameter_group.default_no_prefix.*.arn, [""]), 0)
}
