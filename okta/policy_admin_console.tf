### Get the Admin Console ID
data "okta_app" "console" {
    label = "Okta Admin Console"
}

#Get the Admin Console Auth policy
data "okta_app_signon_policy" "console_auth_policy" {
    app_id = data.okta_app.console.id
}

### Now I have the policy ID
### I want to add a new rule, not create a new policy
resource "okta_app_signon_policy_rule" "console_policy_rule" {
    name = "rule_admin_super"
    status = "INACTIVE"
    policy_id = data.okta_app_signon_policy.console_auth_policy.id
    priority = 1
    access = "ALLOW"
    factor_mode = "2FA"
    groups_included = [okta_group.admin.id]
}