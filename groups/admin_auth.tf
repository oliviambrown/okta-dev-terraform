resource "okta_group" "admin" {
  name = "okta_admin_super"
  description = "${var.terraform-warning} Super Admin group"

}

