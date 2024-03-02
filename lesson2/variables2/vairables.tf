variable "server_roles" {
  description = "The prefix for the random pet name"
  type        = list(string)
  default     = ["web", "application", "database"]
}

variable "server_regions" {
  description = "The prefix for the random pet name"
  type        = set(string)
  default     = ["us-east-1", "us-west-1", "eu-central-1"]
}