/*
Homework
Challenge 1:
Imagine you have three types of server roles that require monitoring: a cache server, a queue server, and a worker server (default values). Each server role needs a unique monitoring configuration file.
Task:
Define a variable in variables.tf to hold the list of server roles.
Create local_file resources in main.tf using for_each to generate a separate monitoring configuration file for each server role. Name the files based on the server role and provide some generic monitoring settings in the content.
*/

resource "local_file" "monitoring_config" {
  for_each =  toset(var.monitoring_configurations)
  filename = "${path.module}/monitoring-${each.key}.conf"
  content  = "Monitoring settings for the ${each.key}"
}

