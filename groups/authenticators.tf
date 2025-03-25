resource "okta_authenticator" "google" {
  key = "google_otp"
  name = "Google Authenticator"
  status = "INACTIVE"
}

