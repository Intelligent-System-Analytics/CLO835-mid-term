variable "env" {
  type        = string
  default     = "prod"
  description = "Deployment Environment"
}

variable "prefix" {
  type        = string
  default     = "assignment1"
  description = "Label"
}

variable "owner" {
  type        = string
  default     = "Nila Hlaing"
  description = "My name"
}

variable "instance_type" {
  type        = string
  default     = "t3.medium"
  description = "Type of the instance"
}
