variable "nw_vnets" {
  type        = list
  description = "(Optional) A list of vnets to be created"
  default     = []
} 

##################### COMMON

variable "location" {
  description = "location"
  type        = string
  default     = ""
}

variable "tags" {
  type        = map
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = {}
}


