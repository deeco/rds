provider "aws" {
  region     = var.region
}

######################################
# Data sources to get VPC and subnets
######################################


#############
# RDS Aurora
#############
module "aurora" {
  source                              = "./modules/aurora"
  name                                = "${var.name}"
  engine                              = "${var.engine}"
  engine_version                      = "${var.engine_version}"
  subnets                             = "${var.subnet_ids}"
  vpc_id                              = "${var.vpc_id}"
  replica_count                       = 0
  instance_type                       = "${var.instance_type}"
  apply_immediately                   = true
  skip_final_snapshot                 = true
  db_parameter_group_name             = aws_db_parameter_group.aurora_db_57_parameter_group.id
  db_cluster_parameter_group_name     = aws_rds_cluster_parameter_group.aurora_57_cluster_parameter_group.id
  iam_database_authentication_enabled = true
  enabled_cloudwatch_logs_exports     = ["audit", "error", "general", "slowquery"]
  allowed_cidr_blocks                 = "${var.allowed_ip}" 

  create_security_group = true
}

resource "aws_db_parameter_group" "aurora_db_57_parameter_group" {
  name        = "${var.name}-parameter-group"
  family      = "aurora-mysql5.7"
  description = "${var.name}-parameter-group"
}

resource "aws_rds_cluster_parameter_group" "aurora_57_cluster_parameter_group" {
  name        = "${var.name}-cluster-parameter-group"
  family      = "aurora-mysql5.7"
  description = "${var.name}-cluster-parameter-group"
}

############################
# Example of security group
############################
resource "aws_security_group" "app_servers" {
  name_prefix = "app-servers-"
  description = "For application servers"
  vpc_id      = "${var.vpc_id}"
}

resource "aws_security_group_rule" "allow_access" {
  type                     = "ingress"
  from_port                = module.aurora.this_rds_cluster_port
  to_port                  = module.aurora.this_rds_cluster_port
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.app_servers.id
  security_group_id        = module.aurora.this_security_group_id
}