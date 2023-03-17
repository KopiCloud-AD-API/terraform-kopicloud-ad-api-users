######################################
## KopiCloud AD API - List AD Users ##
######################################

# Get All AD Users
data "kopicloud_user_list" "test_all" { }

# Returns All AD Users
output "OUTPUT_kopicloud_all_users" {
  description = "All Existing AD Users"
  value       = data.kopicloud_user_list.test_all
}

///////////////////////////////////
  
# Get All AD Users Inside an OU
data "kopicloud_user_list" "test_ou" {
  ou_path = "LDAP://CN=API Service,CN=Managed Service Accounts,DC=kopicloud,DC=local"
}

# Returns All AD Users Inside an OU
output "OUTPUT_kopicloud_all_users_ou" {
  description = "All Existing AD Users inside an OU"
  value       = data.kopicloud_user_list.test_ou
}

///////////////////////////////////

# Get All AD Users Showing Specific Fields 
data "kopicloud_user_list" "test_filter" {
  show_fields = "firstName,lastName,displayName"
}

# Returns all AD Users Showing Specific Fields 
output "kopicloud_all_users_filter" {
  description = "All Existing AD Users Showing Specific Fields"
  value       = data.kopicloud_user_list.test_filter
}
