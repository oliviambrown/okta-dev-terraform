resource "okta_policy_signon" "passless_global_signon_policy" {
    name = "Passwordless Global Session Policy"
    priority = 1
    groups_included = [okta_group.passless_group.id]
    status = "ACTIVE"
  
}

resource "okta_policy_rule_signon" "passless_global_signon_rule" {
    name = "Global Session Policy Rule"
    policy_id = okta_policy_signon.passless_global_signon_policy.id
    primary_factor = "PASSWORD_IDP_ANY_FACTOR"
    access = "ALLOW"
    status = "ACTIVE"
  
}