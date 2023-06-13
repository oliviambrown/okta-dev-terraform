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