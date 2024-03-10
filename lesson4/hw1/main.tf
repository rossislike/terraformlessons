resource "local_file" "webserver_file" {
    for_each = toset(var.web_server_names)
    filename = "${path.module}/webserver-${each.key}.txt"
    content = each.key
}