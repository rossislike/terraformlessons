/*
Create a variables.tf file and define a map variable named feature_flags that contains flags to toggle different features in an application. Use the following key-value pairs:
"signup_enabled" = "true"
"profile_editing_enabled" = "false"
"search_functionality_enabled" = "true"
"beta_features_enabled" = "false"

Static Access: Write a main.tf that creates a local file resource. Use the value from the feature_flags map variable for signup_enabled to populate the file's content. The content should be a simple statement saying whether the signup feature is enabled or not.

Iteration with Maps: Modify the main.tf to use for_each to iterate over the feature_flags map and create a local file for each key-value pair. Each file should be named after the feature flag and contain a simple statement about the feature's enabled status.
*/

resource "local_file" "features" { 
    for_each = var.feature_flags
    filename = "${path.module}/${each.key}.txt"
    content = "${each.value}"
}

resource "local_file" "static_feature" { 
    filename = "${path.module}/signup_enabled.txt"
    content = "${var.feature_flags["signup_enabled"]}"
}
