variable "himanshutodoappvn_name" {
  description = "The name of the virtual network."
  type        = string  
}

variable "himanshutodoappvn_location" {
  description = "The location of the virtual network"
  type        = string  
}

variable "resource_group_name"{
  description = "The name of the virtual network."
  type        = string  
}

variable "address_space"{
  description ="The address space for the virtual network."
  type        = list(string)
}