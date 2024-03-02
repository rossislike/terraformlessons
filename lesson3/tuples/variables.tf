variable "node_config" { 
    type = tuple([string, number, bool, string])
    default = ["node01", 8, false, "worker"]
}