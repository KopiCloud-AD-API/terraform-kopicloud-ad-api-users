############################################
## KopiCloud AD API - Reset User Password ##
############################################

# Reset User Password
resource "kopicloud_user_password_reset" "test" {
  username     = "msmith"
  new_password = var.password
  
  change_password_next_logon = false
}

# Reset Password Output
output "OUTPUT_user_password_reset" {
  description = "User Password Result"
  value       = resource.kopicloud_user_password_reset.test.result
}
