##################################################
## KopiCloud AD API - Create and Update AD User ##
##################################################

# Create AD User
resource "kopicloud_user" "test" {
  username      = "rsmith"
  password      = var.password
  first_name    = "Robert"
  initials      = "T"
  last_name     = "Smith"
  display_name  = "Robert T Smith"
  company       = "KopiCloud Limited"
  description   = "Marketing Director"
  department    = "Marketing"
  email_address = "robert.smith@kopicloud.net"
}

# Returns AD User Result
output "OUTPUT_new_user" {
  description = "Created User"
  value       = resource.kopicloud_user.test
  sensitive = true
}
