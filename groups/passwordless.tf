resource "okta_group" "passless_group" {
    name = "passwordless-group"
    description = "${var.terraform-warning} Setting up for passwordless"
  
}

resource "okta_app_signon_policy" "passless_auth_policy" {
    name = "Passwordless Auth Policy"
    description = "${var.terraform-warning}"

  
}

