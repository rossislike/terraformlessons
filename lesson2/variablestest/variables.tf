variable "filename" {
  description = "The filename for the pet name file"
  type        = string
  default     = "pet-name.txt"
}
variable "content" {
  description = "The content to put in the pet name file"
  type        = string
  default     = "My pet is not called Keisha!"
}



variable "prefix" {
  description = "The prefix for the random pet name"
  type        = string
  default     = "Mr"
}
variable "separator" {
  description = "The separator for the random pet name"
  type        = string
  default     = "."
}

variable "length" {
  description = "The length of the random pet name"
  type        = number
  default     = 1
}