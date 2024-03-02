/*
Define Variables:
In a file named variables.tf, define two variables:
A list variable named server_roles with the default values of "web", "application", "database".
A set variable named server_regions with the default values of "us-east-1", "us-west-1", "eu-central-1".
Ensure each variable includes a description and the correct type.

Create Resources:
In a file named main.tf, create resources using the variables defined above:
Create a local_file resource named server_role_file that uses the first item in the server_roles list to generate a file. The file should be named server-role-[FIRST_ROLE].txt and contain the text "The first server role is [FIRST_ROLE]", where [FIRST_ROLE] is replaced with the actual role.
Create another local_file resource named server_region_file that statically references an item in the server_regions set (after converting it to a list with tolist) to generate a file. The file should be named server-region.txt and contain the text "The server region is [ANY_REGION]", where [ANY_REGION] is replaced with the actual region. Note: Since sets are unordered, the item might vary.
*/

resource "local_file" "server_role_file" {
  filename = "${path.module}/server-role-${var.server_roles[0]}.txt"
  content  = "The first server role is ${var.server_roles[0]}"
}

resource "local_file" "server_region_file" {
  filename = "${path.module}/server-region.txt"
  content  = "Ther server is ${tolist(var.server_regions)[1]}"
}