/*Authenticators are different. 
Undefining the resource only removes the Terraform management
It doesn't destroy the resource for good reason.
Preventative.

*/

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

resource "okta_authenticator" "verify" {
    key = "okta_verify"
    name = "Okta Verify"
    status = "ACTIVE"
  
}

resource "okta_authenticator" "password" {
    key = "okta_password"
    name = "Password"
    status = "ACTIVE"
}

resource "okta_authenticator" "webautn" {
    key = "webauthn"
    name = "FIDO2 (WebAuthn)"
    status = "ACTIVE"
  
}

resource "okta_authenticator" "sec_question" {
    key = "security_question"
    name = "Security Question"
    status = "ACTIVE"
  
}
