variable "monitoring_configurations" { 
    description = "List of different server roles to set up monitoring"
    type = list(string)
    default = ["cache", "queue", "worlker"]
}