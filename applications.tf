resource "okta_app_saml" "mongodb_atlas" {
	label = "MongoDB Atlas"
	preconfigured_app = "mongodbcloudmanager"
	saml_version = "2.0"
	status = "ACTIVE"
}