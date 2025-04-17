resource "okta_app_signon_policy_rule" "bruno-tf" {
    name      = "tf_rule"
    policy_id = data.okta_policy.bruno_policy.id

    ### App Sign On API conversation

    # appSignOn.access
    access = "ALLOW"

    # appSignOn.factorMode
    factor_mode = "2FA"

    # appSignOn.verificationMethod.type
    type = "ASSURANCE"

    # appSignOn.verificationMethod.type.constraints
    constraints = [
        jsonencode({
            "possession" : {
                "deviceBound" : "REQUIRED",
                "hardwareProtection" : "REQUIRED"
                "phishingResistant": "REQUIRED"
            }
        })
    ]
}

data "okta_policy" "bruno_policy" {
    name   = "bruno"
    type   = "ACCESS_POLICY"
}