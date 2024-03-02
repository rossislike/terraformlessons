variable "server_names" {
    description = "value"
    type = list(string)
    default = ["server1", "server2", "server3"]
}

variable "deployment_regions" {
    description = ""
    type = set(string)
    default = ["us-east-1", "eu-west-1", "ap-south-1"]
}

variable "app_configuration" {
    description = ""
    type = map(string)
    default = {
        "environment" = "production", 
        "debug_mode" = "false"
    }
}

variable "server_details" {
  description = "Configuration settings for a server."
  type = object({
    name          = string
    ip        = string
  })
  default = {
    name = "webserver", 
    ip = "192.168.1.10"
  } 
}

variable "node_specifications" { 
    type = tuple([string, number, bool])
    default = ["node01", 4, true]
}