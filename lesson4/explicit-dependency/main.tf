resource "local_file" "whale" { 
    filename = "${path.module}/whale.txt"
    content = "whale"
    depends_on = [local_file.krill]
}

resource "local_file" "krill" { 
    filename = "${path.module}/krill.txt"
    content = "krill"
}