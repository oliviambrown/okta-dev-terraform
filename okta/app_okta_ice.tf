data "okta_user" "hisu" {
  search {
    name = "profile.firstName"
    value = "Historia"
  }

  search {
    name = "profile.lastName"
    value = "Reiss"
  }
  
}

resource "okta_app_bookmark" "okta_ice" {
    label = "Okta Ice"
    url = "https://oktaice.cloud/login/index.html"
  
}

resource "okta_app_user" "okta-ice-hisu" {
    app_id = okta_app_bookmark.okta_ice.id
    username = data.okta_user.hisu.login
    user_id = data.okta_user.hisu.id
  
}

resource "okta_app_user" "okta-ice-olivia" {
    app_id = okta_app_bookmark.okta_ice.id
    username = data.okta_user.olivia.login
    user_id = data.okta_user.olivia.id
  
}