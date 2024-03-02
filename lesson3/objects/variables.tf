variable "server_config" {
  description = "Configuration settings for a server."
  type = object({
    hostname          = string
    ip_address        = string
    operating_system  = string
    is_active         = bool
    installed_services = list(string)
  })
  default = {
    hostname          = "server01"
    ip_address        = "192.168.1.10"
    operating_system  = "Ubuntu"
    is_active         = true
    installed_services = ["nginx", "mysql"]
  } 
}