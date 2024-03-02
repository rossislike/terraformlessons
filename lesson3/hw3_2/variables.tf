variable "user_roles" {
    description = "value"
    type = list(string)
    default = ["admin", "editor", "viewer"]
}

variable "feature_toggles" { 
    description = ""
    type = map(string) 
    default = { 
        "signup_enabled" = "true", 
        "profile_editing_enabled" = "false", 
        "search_functionality_enabled" = "true"
    }
}