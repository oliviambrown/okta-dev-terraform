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

resource "okta_app_saml" "mongodb" {
    id = "0oach7ofrr0y1QkcM5d7"
    label = "MongoDB Atlas"
    preconfigured_app = "mongodbcloudmanager"
    saml_version = "2.0"
    status = "ACTIVE"
    user_name_template = "$${source.login}"
    user_name_template_type = "BUILT_IN"
    attribute_statements {
        filter_type = "STARTS_WITH"
        filter_value = "App-Atlas-"
        name = "memberOf"
        namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
        type = "GROUP"
        values = []
  }
}



