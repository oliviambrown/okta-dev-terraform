resource "okta_app_bookmark" "okta_ice" {
    label = "Okta Ice"
    url = "https://oktaice.cloud/login/index.html"
  
}
resource "okta_app_user" "okta-ice-olivia" {
    app_id = okta_app_bookmark.okta_ice.id
    user_id = data.okta_user.hisu.id
  
}

