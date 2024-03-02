/*
Challenge 3:
Define Variables: In a file named variables.tf, define two variables:
A list variable named network_zones with the default values of "public", "private", "protected". Include a description for this variable.
A set variable named operating_systems with the default values of "linux", "windows", "macos". Ensure each variable includes a description.

Create Resources: In a file named main.tf, create resources using the variables defined above:

Create a local_file resource named network_zone_file that uses the first item in the network_zones list to generate a file. The file should be named zone-type-[FIRST_ZONE].txt and contain the text "Network zone type: [FIRST_ZONE]", where [FIRST_ZONE] is replaced with the actual zone.

Create another local_file resource named operating_system_file that statically references the first item in the operating_systems set (after converting it to a list with tolist) to generate a file. The file should be named os-info.txt and contain the text "Operating system in use: [FIRST_OS]", where [FIRST_OS] is replaced with the actual operating system. Given sets are unordered, the first item can be considered arbitrary for this purpose.

*/

resource "local_file"  "network_zone_file" { 
    for_each = toset(var.network_zones)
    filename = "${path.module}/zone-type-${each.key}"
    content = "Network zone type: ${each.key}"
}

resource "local_file"  "operating_system_file" { 
    filename = "${path.module}/os-info.txt"
    content = "Operating system in use: ${tolist(var.operating_systems)[0]}"
}