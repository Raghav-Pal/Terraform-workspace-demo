variable "instance_type" {
  description = "instance type for resources"
  type        = string
  default     = "t2.micro"
}

variable "access_key" {
  description = "accesskey for aws"
  type        = string
}

variable "secret_key" {
  description = "secret key for aws"
  type        = string
}
