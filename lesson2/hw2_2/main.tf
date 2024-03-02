/*
Challenge 2:
Your infrastructure is deployed in three different regions: Europe North (eu-north-1), Asia Pacific South (ap-south-1), and Middle East South (me-south-1) (default values). You need to create an alert policy file for each region.
Task:
Define a variable in variables.tf to hold the set of deployment regions.
In main.tf, use for_each to iterate over the regions and create a local_file resource for each. The file should be named indicating the region and include basic content for the alert policy.

*/

resource "local_file" "policy_files" {
    for_each = var.regions
    filename = "${path.module}/alert-${each.key}.policy"
    content = "Alert policy for ${each.key}"
}