
resource "local_file" "node" { 
    filename = "${path.module}/node-config-summary.txt"
    content = <<-EOT
    Node Name: ${var.node_config[0]}
    CPU Cores:  ${var.node_config[1]}
    Master Node: ${var.node_config[2] ? "Yes" : "No"}
    Role: ${var.node_config[3]}
  EOT
}