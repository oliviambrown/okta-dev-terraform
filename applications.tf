resource "okta_app_saml" "mongodb_atlas" {
	label = "MongoDB Atlas"
	preconfigured_app = "mongodbcloudmanager"
	saml_version = "2.0"
	status = "ACTIVE"

	#app_settings_json used with okta_app_saml
	#Testing multiple ways to add statemnts in resources
	#The json statement needs quotes from both key:value pair
	attribute_statements {
    type         = "GROUP"
    name         = "groups"
    filter_type  = "REGEX"
    filter_value = ".*"
  }
}

resource "okta_app_saml_app_settings" "mongodb_atlas_app_settings" {
	app_id = okta_app_saml.mongodb_atlas.id
	
	#Used when using okta_app_saml_app_settings
	settings = jsonencode(
		{
			"acsURL" = "https://auth.mongodb.com/sso/saml2/0oajh4dwibKWjlyIX297"
			"audienceURI" = "https://www.okta.com/saml2/service-provider/spkkjmwtynyziasqpvwp"
			
			#Not sure if it's because it's preconfigured. I will try groups instead
			"attributeStatements" = [ 
				{
					"name" = "memberOf"
					"type" = "GROUP"
					"namespace" = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
					"filterType" = "REGEX"
					"filterValue" = ".*"
				}
				
				/*{
					"name" = "firstName"
					"type" = "EXPRESSION"
					"namespace" = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
					"values" = ["user.firstName"]
				}*/
			]
		
		}
	)
}

#Creating resources is the exact same as in the GUI, I only need to know where everything is in TF
resource "okta_app_saml" "spacelift_saml" {
	#App Name*
	label = "Spacelift"

	#Logo
	logo = "./logos/spacelift.png"

	#Single sign-on URL*
	sso_url = "https://oliviambrown.app.spacelift.io/saml/acs"

	#Recipient*
	recipient = "https://oliviambrown.app.spacelift.io/saml/acs"

	#Destination*
	destination = "https://oliviambrown.app.spacelift.io/saml/acs"

	#Authn_context_class_ref*
	authn_context_class_ref = "urn:oasis:names:tc:SAML:2.0:ac:classes:PasswordProtectedTransport"

	#Audience URL (SP Entity ID)*
	audience = "https://oliviambrown.app.spacelift.io/saml/metadata"

	#Application Username*
	subject_name_id_template = "$${user.userName}"

	#Name ID format*
	subject_name_id_format = "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
	
	#Response
	response_signed = true

	#Signature Algorithim
	signature_algorithm = "RSA_SHA256"

	#Digest Algorithim
	digest_algorithm = "SHA256"

	#Each attribute needs it's own declare statement, firstName, lastName, Teams
	attribute_statements {
	  name = "FirstName"
	  type = "EXPRESSION"
	  namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
	  values = ["user.firstName"]
	}
	
	#Attribute_statments only works with okta_app_saml, a terraform shortcut
	attribute_statements {
	  name = "LastName"
	  type = "EXPRESSION"
	  namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
	  values = ["user.lastName"]
	}
	attribute_statements {
	  name = "Teams"
	  namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
	  type = "GROUP"
	  filter_type = "REGEX"
	  filter_value = ".*"
	}
}