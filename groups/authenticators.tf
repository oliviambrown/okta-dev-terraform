resource "okta_authenticator" "google" {
  key = "google_otp"
  legacy_ignore_name = true
  name = ""
  provider_hostname = "localhost"
  provider_user_name_template = "global.assign.userName.login"
  status = "INACTIVE"
  type = "app"
}

