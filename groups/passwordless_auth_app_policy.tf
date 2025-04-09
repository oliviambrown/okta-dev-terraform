
### Passwordless group creation and membership.
resource "okta_group" "passless_group" {
    name = "passwordless-group"
    description = "${var.terraform-warning} Setting up for passwordless"
  
}

resource "okta_group_memberships" "passless_members" {
    group_id = okta_group.passless_group.id
    users = [
        data.okta_user.connie.id,
        data.okta_user.jean.id,
        data.okta_user.sasha.id
    ]
}

#App Autentication Policy and Rule
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




### Authenticator enrollment policy
### Enables which factors are enrollable by a user
### Works in conjunction with authentcation policy and authenticators. They both have to correct expose each other.
resource "okta_policy_mfa" "passless_mfa_policy" {
    name = "policy_mfa_passless"
    status = "ACTIVE"
    is_oie = true
    priority = 2
    groups_included = [
        okta_group.passless_group.id
    ]

    okta_password = {
        enroll = "OPTIONAL"
    }

    webauthn = {
        enroll = "REQUIRED"
    }

    google_otp = {
        enroll = "OPTIONAL"
    }

    okta_verify = {
        enroll = "OPTIONAL"
    }

}

resource "okta_policy_rule_mfa" "passless_mfa_policy_rule" {
    name = "rule_mfa_passless"
    policy_id = okta_policy_mfa.passless_mfa_policy.id
    status = "ACTIVE"

}