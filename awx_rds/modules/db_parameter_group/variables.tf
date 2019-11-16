variable "create" {
  description = "Whether to create this resource or not?"
  type        = bool
  default     = true
}

variable "description" {
  description = "The description of the DB parameter group"
  type        = string
  default     = "awx db"
}

variable "name" {
  description = "The name of the DB parameter group"
  type        = string
  default     = "awx"
}

variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix"
  type        = string
  default     = "awx"
}

variable "identifier" {
  description = "The identifier of the resource"
  type        = string
}

variable "family" {
  description = "The family of the DB parameter group"
  type        = string
  default     = "postgres11"
}

variable "parameters" {
  description = "A list of DB parameter maps to apply"
  type        = list(map(string))
  default     = []
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "use_name_prefix" {
  description = "Whether to use name_prefix or not"
  type        = bool
  default     = true
}
