variable  "network_zones" {
    description = "value"
    type = list(string)
    default = ["public", "private", "protected"]
}

variable  "operating_systems" {
    type = set(string)
    default = ["linux", "windows", "macos"]
}