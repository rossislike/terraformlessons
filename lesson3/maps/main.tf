resource "local_file" "my_app_settings" { 
    filename = "${path.module}/app-config.txt"
    content = "Environment setting: ${var.app_settings["environment"]}"
}

resource "local_file" "app_config_files" { 
    for_each = var.app_settings
    filename = "${path.module}/${each.key}-config.txt"
    content = "${each.key}: ${each.value}"
}

