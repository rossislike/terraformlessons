variable "feature_toggles" { 
    type = map(string)
    default = { 
        "UI" = "true"
        "beta_access" = "false"
    }
}