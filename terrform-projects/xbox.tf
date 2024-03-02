resource "local_file" "xbox" { 
    filename = "${path.module}/favorite-xbox-games.txt"
    content = "Wouldn't mind an XBox either!"
}