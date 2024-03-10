resource "random_pet" "my_pet" { 
    prefix = "Mr"
    separator = "."
    length = "2"
}

resource "local_file" "my_file" { 
    filename = "${path.module}/my_pet.txt"
    content = "My pet is named ${random_pet.my_pet.id}"
}

output "my_output" { 
    value = local_file.my_file.content
}