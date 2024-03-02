variable "feature_flags" { 
    description = "Flags to toggle different features in an application."
    type = map(string) 
    default = {
        "signup_enabled" = "true"
        "profile_editing_enabled" = "false"
        "search_functionality_enabled" = "true"
        "beta_features_enabled" = "false"
    }
}