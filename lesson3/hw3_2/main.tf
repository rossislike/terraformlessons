resource "local_file" "user_roles_files" {
    for_each = toset(var.user_roles)
    filename = "${path.module}/user-role-${each.value}.txt"
    content = "Role: ${each.value}"
}

resource "local_file" "feature_toggles_files" { 
    for_each = var.feature_toggles
    filename = "${path.module}/feature-${each.key}.txt"
    content = "${each.key}: ${each.value}"
}