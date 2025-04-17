resource "okta_app_signon_policy_rule" "bruno-tf" {
    name      = "tf_rule"
    policy_id = data.okta_policy.bruno_policy.id
    factor_mode = "2FA"
}

data "okta_policy" "bruno_policy" {
    name   = "bruno"
    type   = "ACCESS_POLICY"
}