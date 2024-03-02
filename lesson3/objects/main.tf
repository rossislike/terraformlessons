resource "local_file" "server_info" {
  filename = "${path.module}/server-config-summary.txt"
  content = <<-EOT
    Hostname: ${var.server_config.hostname}
    IP Address: ${var.server_config.ip_address}
    Operating System: ${var.server_config.operating_system}
    Active: ${var.server_config.is_active ? "Yes" : "No"}
    Installed Services: ${join(", ", var.server_config.installed_services)}
  EOT
}

output "my_output" {
    value = var.server_config
}