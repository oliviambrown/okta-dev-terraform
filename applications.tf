resource "okta_app_saml" "mongodb_atlas" {
	label = "MongoDB Atlas"
	preconfigured_app = "mongodbcloudmanager"
	saml_version = "2.0"
	status = "ACTIVE"
}

resource "okta_app_saml_app_settings" "mongodb_atlas_app_settings" {
	app_id = okta_app_saml.mongodb_atlas.id
	settings = jsonencode(
	{
		"acsURL" = "https://auth.mongodb.com/sso/saml2/0oajh4dwibKWjlyIX297"
		"audienceURI" = "https://www.okta.com/saml2/service-provider/spkkjmwtynyziasqpvwp"
	}
	)
}