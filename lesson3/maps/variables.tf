variable "app_settings" { 
    description = "Configuration settings for the application"
    type = map(string) 
    default = { 
        "environment" = "production"
        "debug_mode" = "false"
        "version" = "1.0.0"
    }
}