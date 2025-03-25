resource "okta_authenticator" "email" {
  name = "Email"
  key = "okta_email"
  status = "ACTIVE"
}

resource "okta_authenticator" "google" {
  key = "google_otp"
  name = "Google Authenticator"
  status = "ACTIVE"
}