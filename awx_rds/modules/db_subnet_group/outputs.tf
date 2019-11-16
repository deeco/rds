output "default_db_subnet_group_id" {
  description = "The db subnet group name"
  value       = element(concat(aws_db_subnet_group.default.*.id, [""]), 0)
}

output "default_db_subnet_group_arn" {
  description = "The ARN of the db subnet group"
  value       = element(concat(aws_db_subnet_group.default.*.arn, [""]), 0)
}
