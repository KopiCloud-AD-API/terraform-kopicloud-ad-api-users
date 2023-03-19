#######################
## AD User Variables ##
#######################

variable "password" {
  description = "Variable to protect passwords"
  type        = string
  sensitive   = true
}
