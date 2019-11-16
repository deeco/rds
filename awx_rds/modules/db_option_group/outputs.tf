output "default_db_option_group_id" {
  description = "The db option group id"
  value       = element(concat(aws_db_option_group.default.*.id, [""]), 0)
}

output "default_db_option_group_arn" {
  description = "The ARN of the db option group"
  value       = element(concat(aws_db_option_group.default.*.arn, [""]), 0)
}
