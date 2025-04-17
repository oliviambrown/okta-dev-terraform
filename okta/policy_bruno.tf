resource "okta_app_signon_policy_rule" "bruno-tf" {
    name      = "tf_rule"
    policy_id = data.okta_policy.bruno_policy.id

    factor_mode = "2FA"
    re_authentication_frequency = "PT12H"
    type = "ASSURANCE"
    constraints = [
        jsonencode({"possession":{"required":true,"deviceBound":"REQUIRED"}}),
    ]
}

data "okta_policy" "bruno_policy" {
    name   = "bruno"
    type   = "ACCESS_POLICY"
}