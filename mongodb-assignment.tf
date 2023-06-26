resource "okta_app_group_assignment" "mongodb_app_assignment" {
    app_id = okta_app_saml.mongodb_atlas.id
    group_id = okta_group.mongodb_access.id

}

/*data "okta_app" "mongodb_atlas" {
  name
}*/