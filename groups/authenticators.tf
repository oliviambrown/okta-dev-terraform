resource "okta_authenticator" "email" {
  name = "Email"
  key = "okta_email"
  status = "INACTIVE"
}