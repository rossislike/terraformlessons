
resource "local_file" "server_info" {
  filename = "${path.module}/server-config-summary.txt"
  content = <<-EOT
    Hostname: ${var.server_config.hostname}
    IP Address: ${var.server_config.ip_address}
    Role: ${var.server_config.role}
  EOT
}

output "hostname" { 
    value = var.server_config.hostname
}
output "ip_address" { 
    value = var.server_config.ip_address
}

output "role" { 
    value = var.server_config.role
}
