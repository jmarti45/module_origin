# Location
variable "Location" {
  type = map(string)
}

# Environment
variable "Environment" {
  type = string
}

# Enterprise 1
variable "Enterprise1" {
  type = string
}


# Project 1
variable "Project1" {
  type = string
}

# Project 2
variable "Project2" {
  type    = string
  default = null
}

# Project 3
variable "Project3" {
  type    = string
  default = null
}


# Adess space
variable "Address_space" {
  type = string
}

# Adess space
variable "Address_prefixes" {
  type = string
}



variable "binding_tags" {
  type        = map(string)
  default     = {}
  description = "Binding tags defined by resource"
}

# Location
variable "dev_sub_id" {
  type = map(string)
}

# Location
variable "pre_sub_id" {
  type = map(string)
}
