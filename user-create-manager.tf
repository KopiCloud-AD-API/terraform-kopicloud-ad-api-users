// Create User 1
resource "kopicloud_user" "test_1" {
  username      = "richsmith"
  password      = "P@ssw0rd"
  first_name    = "Richard"
  initials      = "X"
  last_name     = "Smith"
  display_name  = "Richard X Smith"
  company       = "KopiCloud Limited"
  description   = "Marketing Director"
  department    = "Marketing"
  email_address = "richard.smith@kopicloud.net"
}

output "OUTPUT_new_user_1" {
  description = "Created User 1"
  value       = resource.kopicloud_user.test_1.result
}

// Create User 2
resource "kopicloud_user" "test_2" {
  username      = "privera"
  password      = "P@ssw0rd"
  first_name    = "Patricia"
  initials      = "H"
  last_name     = "Rivera"
  display_name  = "Patricia Rivera"
  company       = "KopiCloud unLimited"
  description   = "DevOps Engineer"
  department    = "Cloud Team"
  email_address = "patricia.rivera@kopicloud.net"

  city           = "Lisbon"
  state          = "Lisbon"
  country        = "Portugal"
  street = "Av Liberdade 245"
  zip_code    = "1049"
  po_box  = "PO BOX 123"

  mobile_phone = "123 456 9999"
  office_phone = "212 333 4545"
  home_phone   = "711 212 7865"

  office    = "Level 3, Office 67"
  job_title = "DevOps Engineer"
  manager   = resource.kopicloud_user.test_1.username

  change_password_next_logon = true
 
  home_folder_directory = "\\server1\testhome"
  home_folder_drive = "D:"
  //home_folder_path = "\\server1\testpath"
}

output "OUTPUT_new_user_2" {
  description = "Created User 2"
  value       = resource.kopicloud_user.test_2.result
}

