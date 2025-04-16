resource "okta_app_signon_policy" "test" {
    description = "IDK"
    name        = "IDK"
}

resource "okta_app_signon_policy_rule" "test" {
    policy_id = okta_app_signon_policy.test.id
    name      = "testAcc_replace_with_uuid"
    constraints = [
        jsonencode({
            "knowledge" : {
                "types" : ["password"]
            },
        })
    ]
}