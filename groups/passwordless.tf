resource "okta_group" "passless_group" {
    name = "passwordless-group"
    description = "${var.terraform-warning} Setting up for passwordless"
  
}

resource "okta_app_signon_policy" "passless_auth_policy" {
    name = "Passwordless Auth Policy"
    description = "${var.terraform-warning}"

  
}

resource "okta_app_signon_policy_rule" "passless_auth_policy" {
    name = "Passwordless Rule"
    policy_id = "${okta_app_signon_policy.passless_auth_policy.id}"
    groups_included = ["${okta_group.passless_group.id}"]
    status = "INACTIVE"
    factor_mode = "2FA"
}