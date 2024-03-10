resource "local_file" "resource_a" { 
    filename = "${path.module}/a.txt"
    content = "any"
}

resource "local_file" "resource_b" { 
    filename = "${path.module}/b.txt"
    content = "any"
    depends_on = [ local_file.resource_a ]
}