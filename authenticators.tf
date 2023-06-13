resource "okta_authenticator" "okta_verify" {
	key = "okta_verify"
	name = "Okta Verify"
	settings = jsonencode(
	{
		userVerification = "PREFERRED"
		channelBinding = {
			"style" = "NUMBER_CHALLENGE"
			"required" = "HIGH_RISK_ONLY"
		}
	}
	)
}

resource "okta_authenticator" "okta_email" {
	key = "okta_email"
	name = "Okta Email"
}

resource "okta_authenticator" "okta_password" {
	key = "okta_password"
	name = "Okta Password"
}

resource "okta_authenticator" "phone_number" {
	key = "phone_number"
	name = "Phone Number"
}

resource "okta_authenticator" "webauthn" {
	key = "webauthn"
	name = "Webauthn"
} 

resource "okta_authenticator" "google_otp" {
	key = "google_otp"
	name = "Google OTP"
}

resource "okta_authenticator" "security_question" {
	key = "security_question"
	name = "Security Question"
}