resource "local_file" "my_pet" { 
    filename = "${path.module}/pet-name.txt"
    content = random_pet.other-pet.id
}

resource "random_pet" "other-pet" { 
    length = 1
    prefix = "Mr"
    separator = "."
}