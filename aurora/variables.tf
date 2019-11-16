#Region
variable "region" {
  default = "eu-west-1"
}

# VPC
variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = "vpc-001ccf991d7579fd3"
}

# DB subnet group
variable "subnet_ids" {
  description = "A list of VPC subnet IDs"
  type        = list(string)
  default     = ["subnet-0a3f39c22cde4550f", "subnet-07b80472e998f2529"]
}

# Instance Type
variable "instance_type" {
  description = "The instance type of the RDS instance"
  type        = string
  default     = "db.t2.medium"
}

#DB Name
variable "name" {
  description = "The database enamengine to use"
  type        = string
  default     = "testdb-aurora-mysql"
}

#Engine
variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "aurora-mysql"
}

#Engine Versiom
variable "engine_version" {
  description = "The database engine  version to use"
  type        = string
  default     = "5.7.12"
}

#Allowed IP Range
variable "allowed_ip" {
  description = "The range of ip allowed to connect"
  type        = list(string)
  default     = ["10.20.0.0/20", "20.20.0.0/20"]
}