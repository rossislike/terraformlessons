resource "local_file" "my-pet" {
  filename = "${path.module}/output/${var.filename}"
  content  = var.content
}

resource "random_pet" "other-pet" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}