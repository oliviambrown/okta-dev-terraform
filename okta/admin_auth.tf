resource "okta_group" "admin" {
    name = "okta_admin_super"
    description = "${var.terraform-warning} Super Admin group"

}

resource "okta_group_memberships" "olivia-super-membership" {
    group_id = okta_group.admin.id
    users = [
        data.okta_user.olivia.id
    ]
}

resource "okta_group_role" "super_group_assign" {
    group_id  = okta_group.admin.id
    role_type = "SUPER_ADMIN"
}

#Authenticator enrollment policy
resource "okta_policy_mfa" "super-admin-mfa-policy" {
    name = "policy_mfa_admin_super"
    status = "ACTIVE"
    is_oie = true
    priority = 1
    groups_included = [
        okta_group.admin.id
    ]

    okta_password = {
        enroll = "REQUIRED"
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

resource "okta_policy_rule_mfa" "super_admin_mfa_policy_rule" {
    name = "rule_mfa_super_admin"
    policy_id = okta_policy_mfa.super-admin-mfa-policy.id
    status = "ACTIVE"

}

### Global Sesh Policy & Rule
### The global session policy should be lenient to enable the application policies to take precendence.
resource "okta_policy_signon" "super_admin_global_signon_policy" {
    name = "global_session_policy_super_admin"
    priority = 1
    groups_included = [okta_group.admin.id]
    status = "ACTIVE"

}

resource "okta_policy_rule_signon" "super_admin_global_signon_rule" {
    name = "rule_global_ression_policy_super_admin"
    policy_id = okta_policy_signon.super_admin_global_signon_policy.id
    primary_factor = "PASSWORD_IDP_ANY_FACTOR"
    access = "ALLOW"
    status = "ACTIVE"

}