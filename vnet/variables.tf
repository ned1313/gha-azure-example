#############################################################################
# VARIABLES
#############################################################################

variable "location" {
  description = "(Optional) Region where the Azure resources will be created. Defaults to East US."
  type        = string
  default     = "eastus"
}

variable "naming_prefix" {
  description = "(Optional) Naming prefix used for resources. Defaults to adolabs."
  type        = string
  default     = "adolabs"
}

variable "vnet_address_space" {
  description = "(Required) List of Address spaces to use for Vnet."
  type        = list(string)
}

variable "subnets" {
  description = "(Required) Object of subnets to create in Vnet. Key is subnet name."
  type = map(object({
    address_prefixes = list(string)
  }))
}

