resource "okta_app_oauth" "spacelift" {
    label = "Spacelift"
    type = "web"
    redirect_uris  = ["https://oliviamariebrown.app.spacelift.io/oidc/exchange"]
}

import {
  id = "0oah7ikdm5OzdnyQH5d7"
  to = okta_app_oauth.spacelift
}