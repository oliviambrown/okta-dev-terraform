data "okta_user" "olivia" {
    search {
      name = "profile.login"
      value = "olivia@oliviabrown.xyz"
    }
}
resource "okta_app_bookmark" "okta_ice" {
    label = "Okta Ice"
    url = "https://oktaice.cloud/login/index.html"
  
}
resource "okta_app_user" "okta-ice-olivia" {
    app_id = okta_app_bookmark.okta_ice.id
    user_id = okta.user.olivia.id
  
}

