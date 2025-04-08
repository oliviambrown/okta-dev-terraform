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
    status = "ACTIVE"
    factor_mode = "2FA"
}

resource "okta_group_memberships" "passless_members" {
    group_id = okta_group.passless_group.id
    users = [
        data.okta_user.connie.id,
        data.okta_user.jean.id,
        data.okta_user.sasha.id
    ]
  
}

data "okta_user" "jean" {
    search {
      name = "profile.firstName"
      value = "Jean"
    }
  
}

data "okta_user" "connie" {
    search {
      name = "profile.firstName"
      value = "Connie"
    }
  
}

data "okta_user" "sasha" {
  search {
    name = "profile.firstName"
    value = "Sasha"
  }
}