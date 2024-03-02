resource "local_file" "server_names_file" {
    filename = "${path.module}/server-names.txt"
    content = <<-EOT
        ${var.server_names[0]}
        ${var.server_names[1]}
        ${var.server_names[2]}
    EOT
}

resource "local_file" "deployment_regions_file" { 
    filename = "${path.module}/deployment-regions.txt"
    content = <<-EOT
        ${tolist(var.deployment_regions)[0]}
        ${tolist(var.deployment_regions)[1]}
        ${tolist(var.deployment_regions)[2]}
    EOT
}

resource "local_file" "app_config_file" {
    for_each = var.app_configuration
    filename = "${path.module}/app-config.txt"
    content = <<-EOT
        environment: ${var.app_configuration["environment"]}
        debug_mode: ${var.app_configuration["debug_mode"]}
    EOT
}

resource "local_file" "server_info" {
  filename = "${path.module}/server-details.txt"
  content = <<-EOT
    Name: ${var.server_details.name}
    IP Address: ${var.server_details.ip}
  EOT
}

resource "local_file" "node" { 
    filename = "${path.module}/node-config-summary.txt"
    content = <<-EOT
    Node Name: ${var.node_specifications[0]}
    CPU Cores:  ${var.node_specifications[1]}
    Master Node: ${var.node_specifications[2] ? "Yes" : "No"}
  EOT
}

# output "my_output" {
#     value = var.server_details
# }