
variable "regions" { 
    description = "Set of regions to create alert policies for."
    type = set(string)
    default = ["eu-north-1", "ap-south-1", "me-south-1"]
}