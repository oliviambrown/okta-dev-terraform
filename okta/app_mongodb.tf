resource "okta_app_saml" "mongodb" {
    label = "MongoDB Atlas"
    preconfigured_app = "mongodbcloudmanager"
    saml_version = "2.0"
    status = "ACTIVE"
    user_name_template = "$${source.login}"
    user_name_template_type = "BUILT_IN"
    attribute_statements {
        filter_type = "STARTS_WITH"
        filter_value = "App-Atlas-"
        name = "memberOf"
        namespace = "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified"
        type = "GROUP"
        values = []
    }
}