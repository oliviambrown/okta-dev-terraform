resource "okta_app_oauth" "spacelift" {
    label = "Spacelift"
    type = "web"
    grant_types = ["authorization_code"]
    redirect_uris  = ["https://oliviamariebrown.app.spacelift.io/oidc/exchange"]
    response_types = ["code"]
    client_id = "0oah7ikdm5OzdnyQH5d7"
    consent_method = "REQUIRED"
    status = "ACTIVE"
    issuer_mode = "DYNAMIC"
    refresh_token_leeway = 0
    refresh_token_rotation = "STATIC"
    omit_secret = false
  
}

resource "okta_app_user" "spacelift-olivia" {
    app_id = okta_app_oauth.spacelift.id
    username = data.okta_user.olivia.login
    user_id = data.okta_user.olivia.id
  
}
