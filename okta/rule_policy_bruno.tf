resource "okta_app_signon_policy_rule" "bruno-tf" {
    name      = "tf_rule"
    policy_id = data.okta_policy.bruno_policy.id
    access = "ALLOW"
    factor_mode = "2FA"
    type = "ASSURANCE"
    inactivity_period = "PT2H"
    constraints = [
        jsonencode({
            possession = {
                deviceBound        = "REQUIRED"
                hardwareProtection = "REQUIRED"
                phishingResistant  = "REQUIRED"
            }
        })
    ]
}

data "okta_policy" "bruno_policy" {
    name   = "bruno"
    type   = "ACCESS_POLICY"
}