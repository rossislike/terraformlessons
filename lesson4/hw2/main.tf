resource "local_file" "feature_flags" { 
    for_each = var.feature_toggles
    filename = "${path.module}/feature-${each.key}.txt"
    content = "${each.key} is enabled: ${each.value}"
}